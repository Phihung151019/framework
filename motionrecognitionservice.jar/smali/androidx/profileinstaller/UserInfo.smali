.class Landroidx/profileinstaller/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProfileInstaller"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCurrentUserId()I
    .locals 4

    .line 43
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 44
    .local v1, "parcel":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 45
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 46
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 47
    .end local v1    # "parcel":Landroid/os/Parcel;
    :catchall_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "ProfileInstaller"

    const-string v3, "Error when reading current user id. Selected default user id `0`."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return v0
.end method
