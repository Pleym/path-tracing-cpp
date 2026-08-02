#pragma once

#include <GLFW/glfw3.h>
#include <vector>
#include <algorithm>
#include "render.h"

/*
    Rendu progressif affiche en direct.
    Une passe = un echantillon sur TOUS les pixels, puis affichage de la
    moyenne courante. L'image est complete des la premiere passe, juste
    bruitee, et se nettoie ensuite.
*/
void renderPreview(int width,int height,const std::vector<Object*>& scene,const Vec3& origin,const Vec3& lookat,
                   const Vec3& v_up,double v_fov,int max_depth)
{
    double aspect=static_cast<double>(width)/height;
    Camera camera(origin,lookat,v_up,v_fov,aspect);

    if (!glfwInit())
    {
        std::cerr<<"Erreur: glfwInit a echoue"<<std::endl;
        return;
    }
    GLFWwindow* window=glfwCreateWindow(width,height,"Rendu progressif",nullptr,nullptr);
    if (!window)
    {
        std::cerr<<"Erreur: impossible de creer la fenetre"<<std::endl;
        glfwTerminate();
        return;
    }
    glfwMakeContextCurrent(window);

    // accumulateur en couleur LINEAIRE : le gamma ne s'applique qu'a l'affichage
    std::vector<Vec3> accum(width*height,Vec3(0,0,0));
    std::vector<unsigned char> rgb(width*height*3,0);
    int pass=0;

    while (!glfwWindowShouldClose(window))
    {
        ++pass;

        // une seule passe d'un echantillon sur toute l'image
        #pragma omp parallel for collapse(2) schedule(dynamic)
        for (int i=0;i<height;++i)
        {
            for (int j=0;j<width;++j)
            {
                double u=(j+randomDouble())/width;
                double v=(i+randomDouble())/height;
                accum[i*width+j]+=calculateColor(camera.getRay(u,v),scene,max_depth);
            }
        }

        // moyenne courante + gamma, sur une copie uniquement
        // Vec3 stocke des float : on repasse en double pour le gamma et le clamp
        auto toByte=[](float v)
        {
            double g=std::sqrt(static_cast<double>(v));
            return static_cast<unsigned char>(255.0*std::min(1.0,g));
        };
        for (int k=0;k<width*height;++k)
        {
            Vec3 c=accum[k]/static_cast<float>(pass);
            rgb[3*k+0]=toByte(c.x);
            rgb[3*k+1]=toByte(c.y);
            rgb[3*k+2]=toByte(c.z);
        }

        // glDrawPixels dessine la ligne 0 en bas, ce qui correspond deja a v=0 :
        // aucun retournement necessaire ici, contrairement a la sortie PPM
        int fbW,fbH;
        glfwGetFramebufferSize(window,&fbW,&fbH);
        glViewport(0,0,fbW,fbH);
        glPixelZoom(static_cast<float>(fbW)/width,static_cast<float>(fbH)/height);// gere les ecrans Retina
        glRasterPos2f(-1.0f,-1.0f);
        glDrawPixels(width,height,GL_RGB,GL_UNSIGNED_BYTE,rgb.data());

        glfwSwapBuffers(window);
        glfwPollEvents();

        std::cout<<"\rPasse "<<pass<<"   "<<std::flush;
    }

    std::cout<<std::endl;
    glfwDestroyWindow(window);
    glfwTerminate();
}
