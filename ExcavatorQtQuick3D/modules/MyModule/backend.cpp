#include "backend.h"

Backend::Backend(QObject *parent)
    : QObject{parent}
{}

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
    if(m_bucketRotation > m_higherBucketLimit) m_bucketRotation = m_higherBucketLimit;
    if(m_bucketRotation < m_lowerBucketLimit) m_bucketRotation = m_lowerBucketLimit;

    qInfo() << "bucket rotation values: " << m_bucketRotation ;

    emit bucketRotationChanged();

}

float Backend::trackRotation() const
{
    return m_trackRotation;
}

void Backend::setTrackRotation(float amount)
{

    m_trackRotation += amount;

    if(m_trackRotation > m_trackRotationLimits[1]) m_trackRotation = m_trackRotationLimits[1];
    if(m_trackRotation < m_trackRotationLimits[0]) m_trackRotation = m_trackRotationLimits[0];
    qInfo() << "track rotation values: " << m_trackRotation ;
    emit trackRotationChanged();
}
