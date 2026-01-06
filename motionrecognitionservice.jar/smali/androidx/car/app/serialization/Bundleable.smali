.class public final Landroidx/car/app/serialization/Bundleable;
.super Ljava/lang/Object;
.source "Bundleable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/car/app/serialization/Bundleable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Landroidx/car/app/serialization/Bundleable$1;

    invoke-direct {v0}, Landroidx/car/app/serialization/Bundleable$1;-><init>()V

    sput-object v0, Landroidx/car/app/serialization/Bundleable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Landroidx/car/app/serialization/Bundleable;->mBundle:Landroid/os/Bundle;

    .line 70
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p1}, Landroidx/car/app/serialization/Bundler;->toBundle(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/serialization/Bundleable;->mBundle:Landroid/os/Bundle;

    .line 66
    return-void
.end method

.method public static create(Ljava/lang/Object;)Landroidx/car/app/serialization/Bundleable;
    .locals 1
    .param p0, "objectToSerialize"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 41
    new-instance v0, Landroidx/car/app/serialization/Bundleable;

    invoke-direct {v0, p0}, Landroidx/car/app/serialization/Bundleable;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/car/app/serialization/BundlerException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Landroidx/car/app/serialization/Bundleable;->mBundle:Landroid/os/Bundle;

    invoke-static {v0}, Landroidx/car/app/serialization/Bundler;->fromBundle(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 61
    iget-object v0, p0, Landroidx/car/app/serialization/Bundleable;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 62
    return-void
.end method
