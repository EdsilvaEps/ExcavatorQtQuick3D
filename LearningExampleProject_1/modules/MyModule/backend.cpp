#include "backend.h"

Backend::Backend(QObject *parent)
    : QObject{parent}
{}

/*void Backend::updateRotation(float joyX, float joyY)
{
    m_armRotation += joyX*2.0f;
    m_bucketRotation += joyY*2.0f;

    // rotation limits
    m_armRotation = qBound(-30.0f, m_armRotation, 60.0f);
    m_bucketRotation = qBound(-80.0f, m_bucketRotation, 10.0f);

    //qInfo() << "Rotation changed: rotationX: " << m_rotationX << "| rotationY: " << m_rotationY;
    emit rotationChanged();

}*/

void Backend::moveArm(float amount)
{
    m_armRotation += amount;
    m_armRotation = qBound(m_lowerArmLimit, m_armRotation, m_higherArmLimit);
    qInfo() << "Arm rotation values: " << m_armRotation ;
    emit armRotationChanged();

}

void Backend::moveBucket(float amount)
{
    m_bucketRotation += amount;
    //m_bucketRotation = qBound(m_lowerBucketLimit, m_armRotation, m_higherBucketLimit);
    if(m_bucketRotation > m_higherBucketLimit) m_bucketRotation = m_higherBucketLimit;
    if(m_bucketRotation < m_lowerBucketLimit) m_bucketRotation = m_lowerBucketLimit;

    qInfo() << "bucket rotation values: " << m_bucketRotation ;

    emit bucketRotationChanged();

}
