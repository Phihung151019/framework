.class Landroidx/car/app/serialization/Bundleable$1;
.super Ljava/lang/Object;
.source "Bundleable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/serialization/Bundleable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/car/app/serialization/Bundleable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/car/app/serialization/Bundleable;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 79
    new-instance v0, Landroidx/car/app/serialization/Bundleable;

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroidx/car/app/serialization/Bundleable;-><init>(Landroid/os/Bundle;)V

    .line 79
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Landroidx/car/app/serialization/Bundleable$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/car/app/serialization/Bundleable;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/car/app/serialization/Bundleable;
    .locals 1
    .param p1, "size"    # I

    .line 85
    new-array v0, p1, [Landroidx/car/app/serialization/Bundleable;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Landroidx/car/app/serialization/Bundleable$1;->newArray(I)[Landroidx/car/app/serialization/Bundleable;

    move-result-object p1

    return-object p1
.end method
