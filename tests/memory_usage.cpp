#include <iostream>
#include <sys/resource.h>
#include "../src/render.h"
#include <stdexcept>


void argument_(int arg, int number_args) {
    if (arg != number_args){
        throw std::invalid_argument("<width> <height> <samples_per_pixel> <output_path> <max_depth> <render_mode>");
    }
}

int main(int argc, char** argv)
{
    try {
        argument_(argc, 7);
    }
    catch (const std::invalid_argument& e) {
        std::cerr << "Error: " << e.what() << std::endl;
        return 1;
    }

    int num_procs = omp_get_num_procs(); // Get the number of available CPU cores
    omp_set_num_threads(num_procs);      // Set the number of threads to the number of cores

    std::chrono::steady_clock::time_point start;
    std::chrono::steady_clock::time_point end;

    int width=atoi(argv[1]);
    int height=atoi(argv[2]);
    int samples_per_pixel=atoi(argv[3]); //Each pixel is sampled argv[3] times
    char *output_path=argv[4];
    int max_depth=atoi(argv[5]);
    int render_mode=atoi(argv[6]); // Select the renderer type
    std::cout << "Memory usage Profiling" << std::endl;
    //user-defined camera parameters
    Vec3 origin,lookat,v_up;
    double v_fov;
    std::cout<<"Enter camera origin: (x,y,z)"<<std::endl;
    std::cin>>origin.x>>origin.y>>origin.z;
    std::cout<<"Enter camera lookat: (x,y,z)"<<std::endl;
    std::cin>>lookat.x>>lookat.y>>lookat.z;
    std::cout<<"Enter camera v_up: (x,y,z)"<<std::endl;
    std::cin>>v_up.x>>v_up.y>>v_up.z;
    std::cout<<"Enter camera v_fov: "<<std::endl;
    std::cin>>v_fov;

    std::cout<<"Rendering effect is being generated......"<<std::endl;

    start = std::chrono::steady_clock::now();
    struct rusage usage{};
    std::vector<Object*> scene=createScene();

    // record rendering start time
    auto start_time=std::chrono::high_resolution_clock::now();
    //render the image and output it to a file
    if (render_mode==0)
    {
        render(width,height,scene,output_path,origin,lookat,v_up,v_fov,samples_per_pixel,max_depth);
    }
    else if (render_mode==1)
    {
        int num_iterations;
        std::cout<<"Enter MLT iterations: ";
        std::cin>>num_iterations;
        renderMLT(width,height,scene,output_path,origin,lookat,v_up,v_fov,samples_per_pixel,max_depth,num_iterations);
    }
    else
    {
        std::cerr<<"Invalid render mode.Use 0 for normal render, 1 for MLT or 2 for live preview."<< std::endl;
        exit(1);
    }
    end = std::chrono::steady_clock::now();
    int ret = getrusage(RUSAGE_SELF, &usage);
    long time_ns = std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();

    // Record rendering end time
    auto end_time=std::chrono::high_resolution_clock::now();
    // Calculate rendering time
    std::chrono::duration<double> elapsed=end_time-start_time;

    // Output rendering time
    std::cout<<"Render complete. Time taken: "<<elapsed.count()<<" seconds."<< std::endl;
    std::cout<<"Render complete.Please check the outputfile: "<<output_path<<std::endl;
    std::cout<<"Render complete. Time taken: "<<time_ns<<" ns."<< std::endl;

    std::cout << "----------------------------------------------------" << std::endl;
    std::cout << "Memory usage: " << usage.ru_maxrss << " KB" << std::endl;
    return 0;
}
