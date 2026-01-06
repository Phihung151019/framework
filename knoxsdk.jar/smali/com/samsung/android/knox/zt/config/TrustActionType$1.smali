.class Lcom/samsung/android/knox/zt/config/TrustActionType$1;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/zt/config/TrustActionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/knox/zt/config/TrustActionType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/zt/config/TrustActionType;
    .locals 0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/zt/config/TrustActionType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/zt/config/TrustActionType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/zt/config/TrustActionType$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/zt/config/TrustActionType;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Lcom/samsung/android/knox/zt/config/TrustActionType;
    .locals 0

    new-array p0, p1, [Lcom/samsung/android/knox/zt/config/TrustActionType;

    return-object p0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/zt/config/TrustActionType$1;->newArray(I)[Lcom/samsung/android/knox/zt/config/TrustActionType;

    move-result-object p0

    return-object p0
.end method
