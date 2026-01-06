.class Lcom/sec/ims/cmc/CmcCallCmdInfo$1;
.super Ljava/lang/Object;
.source "CmcCallCmdInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/cmc/CmcCallCmdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/ims/cmc/CmcCallCmdInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/cmc/CmcCallCmdInfo;
    .locals 1

    .line 53
    new-instance p0, Lcom/sec/ims/cmc/CmcCallCmdInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/ims/cmc/CmcCallCmdInfo;-><init>(Landroid/os/Parcel;Lcom/sec/ims/cmc/CmcCallCmdInfo-IA;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lcom/sec/ims/cmc/CmcCallCmdInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/cmc/CmcCallCmdInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/ims/cmc/CmcCallCmdInfo;
    .locals 0

    .line 58
    new-array p0, p1, [Lcom/sec/ims/cmc/CmcCallCmdInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lcom/sec/ims/cmc/CmcCallCmdInfo$1;->newArray(I)[Lcom/sec/ims/cmc/CmcCallCmdInfo;

    move-result-object p0

    return-object p0
.end method
