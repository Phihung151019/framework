.class public final Landroidx/car/app/model/Metadata$Builder;
.super Ljava/lang/Object;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/model/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mPlace:Landroidx/car/app/model/Place;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroidx/car/app/model/Metadata;)V
    .locals 1
    .param p1, "metadata"    # Landroidx/car/app/model/Metadata;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/Metadata;

    invoke-virtual {v0}, Landroidx/car/app/model/Metadata;->getPlace()Landroidx/car/app/model/Place;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/model/Metadata$Builder;->mPlace:Landroidx/car/app/model/Place;

    .line 110
    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/model/Metadata;
    .locals 1

    .line 96
    new-instance v0, Landroidx/car/app/model/Metadata;

    invoke-direct {v0, p0}, Landroidx/car/app/model/Metadata;-><init>(Landroidx/car/app/model/Metadata$Builder;)V

    return-object v0
.end method

.method public setPlace(Landroidx/car/app/model/Place;)Landroidx/car/app/model/Metadata$Builder;
    .locals 1
    .param p1, "place"    # Landroidx/car/app/model/Place;

    .line 87
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/Place;

    iput-object v0, p0, Landroidx/car/app/model/Metadata$Builder;->mPlace:Landroidx/car/app/model/Place;

    .line 88
    return-object p0
.end method
