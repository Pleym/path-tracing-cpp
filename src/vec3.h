#pragma once

#include <iostream>
#include <cmath>
#include <limits>

class Vec3
{
    public:
        float x,y,z;
        Vec3();
        Vec3(float x,float y,float z);
        Vec3 operator+(const Vec3& v)const;
        Vec3& operator+=(const Vec3& v);
        Vec3 operator-(const Vec3& v)const;
        Vec3 operator*(const float t)const;//Multiply a vector by a scalar
        friend Vec3 operator*(const float t,const Vec3& v);//Multiply a scalar by a vector
        Vec3 operator*(const Vec3& v)const;
        Vec3 operator/(const float t)const;
        float operator[](const int i)const;
        Vec3 operator-()const;//Take the opposite number
        float dot(const Vec3& v)const;//Vector dot product
        Vec3 cross(const Vec3& v)const;//Vector cross product
        float length()const;
        Vec3 normalize()const;
        friend std::ostream& operator<<(std::ostream& os,const Vec3& v);
        bool nearZero()const;//check whether a vector is close to zero
};
