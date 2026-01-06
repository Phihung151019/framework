.class Lvendor/samsung/hardware/security/spqckeymaster/PQCKey$1;
.super Ljava/lang/Object;
.source "PQCKey.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/security/spqckeymaster/PQCKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lvendor/samsung/hardware/security/spqckeymaster/PQCKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 16
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/security/spqckeymaster/PQCKey$1;->createFromParcel(Landroid/os/Parcel;)Lvendor/samsung/hardware/security/spqckeymaster/PQCKey;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lvendor/samsung/hardware/security/spqckeymaster/PQCKey;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 19
    new-instance v0, Lvendor/samsung/hardware/security/spqckeymaster/PQCKey;

    invoke-direct {v0}, Lvendor/samsung/hardware/security/spqckeymaster/PQCKey;-><init>()V

    .line 20
    .local v0, "_aidl_out":Lvendor/samsung/hardware/security/spqckeymaster/PQCKey;
    invoke-virtual {v0, p1}, Lvendor/samsung/hardware/security/spqckeymaster/PQCKey;->readFromParcel(Landroid/os/Parcel;)V

    .line 21
    return-object v0
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

    .line 16
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/security/spqckeymaster/PQCKey$1;->newArray(I)[Lvendor/samsung/hardware/security/spqckeymaster/PQCKey;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lvendor/samsung/hardware/security/spqckeymaster/PQCKey;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 25
    new-array v0, p1, [Lvendor/samsung/hardware/security/spqckeymaster/PQCKey;

    return-object v0
.end method
