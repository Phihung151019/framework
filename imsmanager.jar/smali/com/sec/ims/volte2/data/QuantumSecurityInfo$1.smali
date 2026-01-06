.class Lcom/sec/ims/volte2/data/QuantumSecurityInfo$1;
.super Ljava/lang/Object;
.source "QuantumSecurityInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/data/QuantumSecurityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/ims/volte2/data/QuantumSecurityInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/volte2/data/QuantumSecurityInfo;
    .locals 0

    .line 162
    new-instance p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    invoke-direct {p0, p1}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;-><init>(Landroid/os/Parcel;)V

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

    .line 159
    invoke-virtual {p0, p1}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/ims/volte2/data/QuantumSecurityInfo;
    .locals 0

    .line 167
    new-array p0, p1, [Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

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

    .line 159
    invoke-virtual {p0, p1}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo$1;->newArray(I)[Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object p0

    return-object p0
.end method
