.class Lcom/sec/ims/cmc/CmcDialog$1;
.super Ljava/lang/Object;
.source "CmcDialog.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/cmc/CmcDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/ims/cmc/CmcDialog;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/cmc/CmcDialog;
    .locals 1

    .line 144
    new-instance p0, Lcom/sec/ims/cmc/CmcDialog;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/ims/cmc/CmcDialog;-><init>(Landroid/os/Parcel;Lcom/sec/ims/cmc/CmcDialog-IA;)V

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

    .line 141
    invoke-virtual {p0, p1}, Lcom/sec/ims/cmc/CmcDialog$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/cmc/CmcDialog;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/ims/cmc/CmcDialog;
    .locals 0

    .line 149
    new-array p0, p1, [Lcom/sec/ims/cmc/CmcDialog;

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

    .line 141
    invoke-virtual {p0, p1}, Lcom/sec/ims/cmc/CmcDialog$1;->newArray(I)[Lcom/sec/ims/cmc/CmcDialog;

    move-result-object p0

    return-object p0
.end method
