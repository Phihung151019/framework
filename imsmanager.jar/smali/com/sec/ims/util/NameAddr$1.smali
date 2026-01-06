.class Lcom/sec/ims/util/NameAddr$1;
.super Ljava/lang/Object;
.source "NameAddr.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/util/NameAddr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/ims/util/NameAddr;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/util/NameAddr;
    .locals 1

    .line 130
    new-instance p0, Lcom/sec/ims/util/NameAddr;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/ims/util/NameAddr;-><init>(Landroid/os/Parcel;Lcom/sec/ims/util/NameAddr-IA;)V

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

    .line 121
    invoke-virtual {p0, p1}, Lcom/sec/ims/util/NameAddr$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/util/NameAddr;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/ims/util/NameAddr;
    .locals 0

    .line 141
    new-array p0, p1, [Lcom/sec/ims/util/NameAddr;

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

    .line 121
    invoke-virtual {p0, p1}, Lcom/sec/ims/util/NameAddr$1;->newArray(I)[Lcom/sec/ims/util/NameAddr;

    move-result-object p0

    return-object p0
.end method
