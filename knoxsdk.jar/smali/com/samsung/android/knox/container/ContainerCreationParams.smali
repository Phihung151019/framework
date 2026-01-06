.class public Lcom/samsung/android/knox/container/ContainerCreationParams;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/container/ContainerCreationParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist LOCK_TYPE_FINGER_PRINT:I = 0x1

.field public static final greylist LOCK_TYPE_IRIS:I = 0x9

.field public static final greylist LOCK_TYPE_PASSWORD:I = 0x0

.field public static final greylist LOCK_TYPE_PATTERN:I = 0x3

.field public static final greylist LOCK_TYPE_PIN:I = 0x2

.field public static final greylist STATE_SETUP_POST_CREATE:I = 0x1

.field public static final greylist STATE_SETUP_PROGRESS:I = 0x0

.field public static final greylist STATE_WIZARD_EXIT_CLEAN:I = 0x2

.field public static final greylist TAG:Ljava/lang/String; = "ContainerCreationParams"


# instance fields
.field public greylist isMigrationFlow:Z

.field public greylist mAdminParam:Ljava/lang/String;

.field public greylist mAdminRemovable:Z

.field public greylist mAdminUid:I

.field public greylist mBackupPin:Ljava/lang/String;

.field public greylist mBiometricsInfo:I

.field public greylist mConfigurationName:Ljava/lang/String;

.field public greylist mConfigurationType:Lcom/samsung/android/knox/container/KnoxConfigurationType;

.field public greylist mContainerId:I

.field public greylist mCreatorUid:I

.field public greylist mFeatureType:Ljava/lang/String;

.field public greylist mFingerprintPlus:Z

.field public greylist mFlags:I

.field public greylist mIrisPlus:Z

.field public greylist mLockType:I

.field public greylist mName:Ljava/lang/String;

.field public greylist mPackagePoliciesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public greylist mPassword:Ljava/lang/String;

.field public greylist mRequestId:I

.field public greylist mRequestState:I

.field public greylist mResetPwdKey:Ljava/lang/String;

.field public greylist mRestoreSelected:Z


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/container/ContainerCreationParams$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/container/ContainerCreationParams$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/container/ContainerCreationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestState:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestId:I

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFlags:I

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mLockType:I

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminUid:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminRemovable:Z

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mCreatorUid:I

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mContainerId:I

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFingerprintPlus:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRestoreSelected:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mIrisPlus:Z

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBiometricsInfo:I

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationType:Lcom/samsung/android/knox/container/KnoxConfigurationType;

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->isMigrationFlow:Z

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationName:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPackagePoliciesMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestState:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestId:I

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFlags:I

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mLockType:I

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminUid:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminRemovable:Z

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mCreatorUid:I

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mContainerId:I

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFingerprintPlus:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRestoreSelected:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mIrisPlus:Z

    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBiometricsInfo:I

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationType:Lcom/samsung/android/knox/container/KnoxConfigurationType;

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->isMigrationFlow:Z

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationName:Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPackagePoliciesMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mResetPwdKey:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mResetPwdKey:Ljava/lang/String;

    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationName:Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationName:Ljava/lang/String;

    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mLockType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mCreatorUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mContainerId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_6

    move v3, v2

    goto :goto_0

    :cond_6
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFingerprintPlus:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_7

    move v3, v2

    goto :goto_1

    :cond_7
    move v3, v1

    :goto_1
    iput-boolean v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRestoreSelected:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_8

    move v3, v2

    goto :goto_2

    :cond_8
    move v3, v1

    :goto_2
    iput-boolean v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mIrisPlus:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBiometricsInfo:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    iput-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationType:Lcom/samsung/android/knox/container/KnoxConfigurationType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_9

    move v3, v2

    goto :goto_3

    :cond_9
    move v3, v1

    :goto_3
    iput-boolean v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->isMigrationFlow:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_a

    move v1, v2

    :cond_a
    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminRemovable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    :cond_b
    return-void
.end method


# virtual methods
.method public greylist clone()Lcom/samsung/android/knox/container/ContainerCreationParams;
    .locals 2

    new-instance v0, Lcom/samsung/android/knox/container/ContainerCreationParams;

    invoke-direct {v0}, Lcom/samsung/android/knox/container/ContainerCreationParams;-><init>()V

    iget v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setRequestId(I)V

    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setName(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mLockType:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setLockType(I)V

    iget-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFingerprintPlus:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setFingerprintPlus(Z)V

    iget-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mIrisPlus:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setIrisPlus(Z)V

    iget v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBiometricsInfo:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setBiometricsInfo(I)V

    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setBackupPin(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRestoreSelected:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setRestoreSelection(Z)V

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->isMigrationFlow:Z

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setIsMigrationFlow(Z)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerCreationParams;->clone()Lcom/samsung/android/knox/container/ContainerCreationParams;

    move-result-object p0

    return-object p0
.end method

.method public whitelist describeContents()I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getRequestId :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContainerCreationParams"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getName :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getAdminUid :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getAdminUid()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public greylist getAdminParam()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getAdminRemovable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminRemovable:Z

    return p0
.end method

.method public greylist getAdminUid()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminUid:I

    return p0
.end method

.method public greylist getBackupPin()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getBiometricsInfo()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBiometricsInfo:I

    return p0
.end method

.method public greylist getConfigurationName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationName:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getConfigurationType()Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationType:Lcom/samsung/android/knox/container/KnoxConfigurationType;

    return-object p0
.end method

.method public greylist getContainerId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mContainerId:I

    return p0
.end method

.method public greylist getCreatorUid()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mCreatorUid:I

    return p0
.end method

.method public greylist getFeatureType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getFingerprintPlus()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFingerprintPlus:Z

    return p0
.end method

.method public greylist getFlags()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFlags:I

    return p0
.end method

.method public greylist getIrisPlus()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mIrisPlus:Z

    return p0
.end method

.method public greylist getIsMigrationFlow()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->isMigrationFlow:Z

    return p0
.end method

.method public greylist getLockType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mLockType:I

    return p0
.end method

.method public greylist getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getPackagePoliciesMap()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPackagePoliciesMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public greylist getPassword()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getRequestId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestId:I

    return p0
.end method

.method public greylist getRequestState()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestState:I

    return p0
.end method

.method public greylist getResetPasswordKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mResetPwdKey:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getRestoreSelection()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRestoreSelected:Z

    return p0
.end method

.method public greylist setAdminParam(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    return-void
.end method

.method public greylist setAdminRemovable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminRemovable:Z

    return-void
.end method

.method public greylist setAdminUid(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminUid:I

    return-void
.end method

.method public greylist setBackupPin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    return-void
.end method

.method public greylist setBiometricsInfo(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBiometricsInfo:I

    return-void
.end method

.method public greylist setConfigurationName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationName:Ljava/lang/String;

    return-void
.end method

.method public greylist setConfigurationType(Lcom/samsung/android/knox/container/KnoxConfigurationType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationType:Lcom/samsung/android/knox/container/KnoxConfigurationType;

    return-void
.end method

.method public greylist setContainerId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mContainerId:I

    return-void
.end method

.method public greylist setCreatorUid(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mCreatorUid:I

    return-void
.end method

.method public greylist setFeatureType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    return-void
.end method

.method public greylist setFingerprintPlus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFingerprintPlus:Z

    return-void
.end method

.method public greylist setFlags(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFlags:I

    return-void
.end method

.method public greylist setIrisPlus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mIrisPlus:Z

    return-void
.end method

.method public greylist setIsMigrationFlow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->isMigrationFlow:Z

    return-void
.end method

.method public greylist setLockType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mLockType:I

    return-void
.end method

.method public greylist setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    return-void
.end method

.method public greylist setPackagePoliciesMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPackagePoliciesMap:Ljava/util/HashMap;

    return-void
.end method

.method public greylist setPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    return-void
.end method

.method public greylist setRequestId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestId:I

    return-void
.end method

.method public greylist setRequestState(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestState:I

    return-void
.end method

.method public greylist setResetPasswordKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mResetPwdKey:Ljava/lang/String;

    return-void
.end method

.method public greylist setRestoreSelection(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRestoreSelected:Z

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mResetPwdKey:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_4
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationName:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_5
    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mLockType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mCreatorUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mContainerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFingerprintPlus:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRestoreSelected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mIrisPlus:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBiometricsInfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationType:Lcom/samsung/android/knox/container/KnoxConfigurationType;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->isMigrationFlow:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminRemovable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    if-eqz p0, :cond_6

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
