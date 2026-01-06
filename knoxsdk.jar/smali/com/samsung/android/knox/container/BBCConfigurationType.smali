.class public Lcom/samsung/android/knox/container/BBCConfigurationType;
.super Lcom/samsung/android/knox/container/KnoxConfigurationType;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/container/BBCConfigurationType;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist TAG:Ljava/lang/String; = "BBCConfigurationType"


# instance fields
.field public greylist mAllowClearAllNotification:Z

.field public greylist mAllowHomeKey:Z

.field public greylist mAllowSettingsChanges:Z

.field public greylist mAllowStatusBarExpansion:Z

.field public greylist mHideSystemBar:Z

.field public greylist mWipeRecentTasks:Z


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/container/BBCConfigurationType$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/container/BBCConfigurationType$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/container/BBCConfigurationType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowSettingsChanges:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowStatusBarExpansion:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowHomeKey:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowClearAllNotification:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mHideSystemBar:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mWipeRecentTasks:Z

    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowSettingsChanges:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowStatusBarExpansion:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowHomeKey:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowClearAllNotification:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mHideSystemBar:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mWipeRecentTasks:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowSettingsChanges:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowStatusBarExpansion:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    iput-boolean v2, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowHomeKey:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    iput-boolean v2, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowClearAllNotification:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_4

    move v2, v0

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    iput-boolean v2, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mHideSystemBar:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v0, :cond_5

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mWipeRecentTasks:Z

    return-void
.end method


# virtual methods
.method public greylist allowClearAllNotification(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowClearAllNotification:Z

    return-void
.end method

.method public greylist allowHomeKey(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowHomeKey:Z

    return-void
.end method

.method public greylist allowSettingsChanges(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowSettingsChanges:Z

    return-void
.end method

.method public greylist allowStatusBarExpansion(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowStatusBarExpansion:Z

    return-void
.end method

.method public greylist clone(Ljava/lang/String;)Lcom/samsung/android/knox/container/BBCConfigurationType;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/knox/container/BBCConfigurationType;

    invoke-direct {v0}, Lcom/samsung/android/knox/container/BBCConfigurationType;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->cloneConfiguration(Lcom/samsung/android/knox/container/KnoxConfigurationType;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowSettingsChanges:Z

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/container/BBCConfigurationType;->allowSettingsChanges(Z)V

    iget-boolean p1, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowStatusBarExpansion:Z

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/container/BBCConfigurationType;->allowStatusBarExpansion(Z)V

    iget-boolean p1, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowHomeKey:Z

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/container/BBCConfigurationType;->allowHomeKey(Z)V

    iget-boolean p1, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowClearAllNotification:Z

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/container/BBCConfigurationType;->allowClearAllNotification(Z)V

    iget-boolean p1, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mHideSystemBar:Z

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/container/BBCConfigurationType;->setHideSystemBar(Z)V

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mWipeRecentTasks:Z

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/container/BBCConfigurationType;->setWipeRecentTasks(Z)V

    return-object v0

    :cond_1
    :goto_0
    const-string p0, "BBCConfigurationType"

    const-string p1, "clone(): name is either null or empty, hence returning null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic greylist clone(Ljava/lang/String;)Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/container/BBCConfigurationType;->clone(Ljava/lang/String;)Lcom/samsung/android/knox/container/BBCConfigurationType;

    move-result-object p0

    return-object p0
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist dumpState()V
    .locals 3

    const-string v0, "COM config dump START:"

    const-string v1, "BBCConfigurationType"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mAllowSettingsChanges : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowSettingsChanges:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mAllowStatusBarExpansion : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowStatusBarExpansion:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mAllowHomeKey : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowHomeKey:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mAllowClearAllNotification : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowClearAllNotification:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mHideSystemBar : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mHideSystemBar:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mWipeRecentTasks : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mWipeRecentTasks:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->dumpState()V

    const-string p0, "COM config dump END."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public greylist isClearAllNotificationAllowed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowClearAllNotification:Z

    return p0
.end method

.method public greylist isHideSystemBarEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mHideSystemBar:Z

    return p0
.end method

.method public greylist isHomeKeyAllowed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowHomeKey:Z

    return p0
.end method

.method public greylist isSettingChangesAllowed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowSettingsChanges:Z

    return p0
.end method

.method public greylist isStatusBarExpansionAllowed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowStatusBarExpansion:Z

    return p0
.end method

.method public greylist isWipeRecentTasksEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mWipeRecentTasks:Z

    return p0
.end method

.method public greylist setHideSystemBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mHideSystemBar:Z

    return-void
.end method

.method public greylist setWipeRecentTasks(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mWipeRecentTasks:Z

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowSettingsChanges:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowStatusBarExpansion:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowHomeKey:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mAllowClearAllNotification:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mHideSystemBar:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p0, p0, Lcom/samsung/android/knox/container/BBCConfigurationType;->mWipeRecentTasks:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
