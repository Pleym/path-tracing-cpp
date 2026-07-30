#include "firstCollision.h"

HitInfo findFirstCollision(const Ray& ray,const std::vector<Object*>& scene)
{
    HitInfo closestHit;
    double tmin=DBL_MAX;//the initial minimum distance is set to infinity
    for (auto* obj:scene)
    {
        Vec3 intersection;
        double t;
        Vec3 normal;
        if (obj->intersect(ray,0.001f,tmin,intersection,t,normal))
        {
            tmin=t;//restreint la recherche aux objets plus proches, sinon le dernier objet testé gagne
            closestHit.hitObject=obj;
            closestHit.intersection=intersection;
            closestHit.distance=t;
            closestHit.setFaceNormal(ray, normal);
        }
    }
    return closestHit;
}