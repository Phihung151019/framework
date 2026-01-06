.class public Lcom/samsung/android/knox/container/CreationParams;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/container/CreationParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist TAG:Ljava/lang/String; = "CreationParams"


# instance fields
.field public greylist mAdminPkgName:Ljava/lang/String;

.field public greylist mConfigName:Ljava/lang/String;

.field public greylist mPwdResetToken:Ljava/lang/String;


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/container/CreationParams$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/container/CreationParams$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/container/CreationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/container/CreationParams;->mConfigName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/CreationParams;->mAdminPkgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/CreationParams;->mPwdResetToken:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/container/CreationParams;->mConfigName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/CreationParams;->mAdminPkgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/container/CreationParams;->mPwdResetToken:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/CreationParams;->mConfigName:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/samsung/android/knox/container/CreationParams;->mConfigName:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/CreationParams;->mAdminPkgName:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/samsung/android/knox/container/CreationParams;->mAdminPkgName:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/container/CreationParams;->mPwdResetToken:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iput-object v0, p0, Lcom/samsung/android/knox/container/CreationParams;->mPwdResetToken:Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist getAdminPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/CreationParams;->mAdminPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getConfigurationName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/CreationParams;->mConfigName:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getPasswordResetToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/container/CreationParams;->mPwdResetToken:Ljava/lang/String;

    return-object p0
.end method

.method public greylist setAdminPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/CreationParams;->mAdminPkgName:Ljava/lang/String;

    return-void
.end method

.method public greylist setConfigurationName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/CreationParams;->mConfigName:Ljava/lang/String;

    return-void
.end method

.method public greylist setPasswordResetToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/container/CreationParams;->mPwdResetToken:Ljava/lang/String;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Lcom/samsung/android/knox/container/CreationParams;->mConfigName:Ljava/lang/String;

    const-string v0, ""

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/knox/container/CreationParams;->mAdminPkgName:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/knox/container/CreationParams;->mPwdResetToken:Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
