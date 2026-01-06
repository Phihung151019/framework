.class Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue$1;
.super Ljava/lang/Object;
.source "SehPQCKeyParameterValue.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 281
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

    .line 281
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue$1;->createFromParcel(Landroid/os/Parcel;)Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue;
    .locals 2
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 284
    new-instance v0, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue;-><init>(Landroid/os/Parcel;Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue-IA;)V

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

    .line 281
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue$1;->newArray(I)[Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 288
    new-array v0, p1, [Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue;

    return-object v0
.end method
