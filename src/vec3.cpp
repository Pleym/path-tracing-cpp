#include "vec3.h"
#include <arm_neon.h>

Vec3::Vec3():x(0.0),y(0.0),z(0.0){}

Vec3::Vec3(float x,float y,float z)
{
    this->x=x;
    this->y=y;
    this->z=z;
}

Vec3 Vec3::operator+(const Vec3& v)const
{
    return Vec3(x+v.x,y+v.y,z+v.z);
}

Vec3& Vec3::operator+=(const Vec3& v)
{
    x+=v.x;
    y+=v.y;
    z+=v.z;
    return *this;
}

Vec3 Vec3::operator-(const Vec3& v)const
{
    return Vec3(x-v.x,y-v.y,z-v.z);
}

Vec3 Vec3::operator*(const float t)const
{
    return Vec3(x*t,y*t,z*t);
}

Vec3 operator*(const float t,const Vec3& v)
{
    return Vec3(t*v.x,t*v.y,t*v.z);
}

Vec3 Vec3::operator*(const Vec3& v)const
{
    return Vec3(x*v.x,y*v.y,z*v.z);
}

Vec3 Vec3::operator/(const float t)const
{
    return Vec3(x/t,y/t,z/t);
}

float Vec3::operator[](const int i)const
{
    if (i==0)
        return x;
    else if (i==1)
        return y;
    else
        return z;
}

Vec3 Vec3::operator-()const
{
    return Vec3(-x,-y,-z);
}

float Vec3::dot(const Vec3& v)const
{
    return x*v.x+y*v.y+z*v.z;
}

Vec3 Vec3::cross(const Vec3& v)const
{
    return Vec3(y * v.z - z * v.y,z * v.x - x * v.z,x * v.y - y * v.x);
}

float Vec3::length()const
{
    return std::sqrt(x*x+y*y+z*z);
}

Vec3 Vec3::normalize()const
{
    const float inv_length = 1.0/Vec3::length();
    return Vec3(x*inv_length,y*inv_length,z*inv_length);
}

std::ostream& operator<<(std::ostream& os,const Vec3& v)
{
    os<<"("<<v.x<<","<<v.y<<","<<v.z<<")";
    return os;
}

bool Vec3::nearZero()const
{
    const float epsilon = 1e-8;
    return (std::fabs(x) < epsilon) && (std::fabs(y) < epsilon) && (std::fabs(z) < epsilon);
}
