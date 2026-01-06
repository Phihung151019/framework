.class public Lcom/samsung/android/knox/application/ManagedAppInfo;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/application/ManagedAppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist mAppDisabled:I

.field public greylist mAppInstallCount:I

.field public greylist mAppInstallationDisabled:I

.field public greylist mAppPkg:Ljava/lang/String;

.field public greylist mAppUninstallCount:I

.field public greylist mAppUninstallationDisabled:I

.field public greylist mControlStateDisableCause:I

.field public greylist mControlStateDisableCauseMetadata:Ljava/lang/String;

.field public greylist mIsEnterpriseApp:I

.field public greylist mIsInstallSourceMDM:I


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/application/ManagedAppInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/application/ManagedAppInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/application/ManagedAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppInstallCount:I

    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppUninstallCount:I

    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppDisabled:I

    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppInstallationDisabled:I

    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppUninstallationDisabled:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mControlStateDisableCause:I

    iput-object v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mControlStateDisableCauseMetadata:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mIsEnterpriseApp:I

    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mIsInstallSourceMDM:I

    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppInstallCount:I

    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppUninstallCount:I

    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppDisabled:I

    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppInstallationDisabled:I

    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppUninstallationDisabled:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mControlStateDisableCause:I

    iput-object v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mControlStateDisableCauseMetadata:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mIsEnterpriseApp:I

    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mIsInstallSourceMDM:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/application/ManagedAppInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppInstallCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppUninstallCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppDisabled:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppInstallationDisabled:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppUninstallationDisabled:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mControlStateDisableCause:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mControlStateDisableCauseMetadata:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mIsEnterpriseApp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mIsInstallSourceMDM:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pkg: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,InstallCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppInstallCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", UninstallCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppUninstallCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAppDisabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppDisabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAppInstallationDisabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppInstallationDisabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAppUninstallationDisabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppUninstallationDisabled:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppInstallCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppUninstallCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppDisabled:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppInstallationDisabled:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppUninstallationDisabled:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mControlStateDisableCause:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mControlStateDisableCauseMetadata:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mIsEnterpriseApp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mIsInstallSourceMDM:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
