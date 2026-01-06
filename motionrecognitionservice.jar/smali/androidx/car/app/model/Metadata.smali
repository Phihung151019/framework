.class public final Landroidx/car/app/model/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/Metadata$Builder;
    }
.end annotation


# static fields
.field public static final EMPTY_METADATA:Landroidx/car/app/model/Metadata;


# instance fields
.field private final mPlace:Landroidx/car/app/model/Place;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Landroidx/car/app/model/Metadata$Builder;

    invoke-direct {v0}, Landroidx/car/app/model/Metadata$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/car/app/model/Metadata$Builder;->build()Landroidx/car/app/model/Metadata;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/Metadata;->EMPTY_METADATA:Landroidx/car/app/model/Metadata;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/Metadata;->mPlace:Landroidx/car/app/model/Place;

    .line 72
    return-void
.end method

.method constructor <init>(Landroidx/car/app/model/Metadata$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/model/Metadata$Builder;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iget-object v0, p1, Landroidx/car/app/model/Metadata$Builder;->mPlace:Landroidx/car/app/model/Place;

    iput-object v0, p0, Landroidx/car/app/model/Metadata;->mPlace:Landroidx/car/app/model/Place;

    .line 67
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 54
    if-ne p0, p1, :cond_0

    .line 55
    const/4 v0, 0x1

    return v0

    .line 57
    :cond_0
    instance-of v0, p1, Landroidx/car/app/model/Metadata;

    if-nez v0, :cond_1

    .line 58
    const/4 v0, 0x0

    return v0

    .line 60
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/car/app/model/Metadata;

    .line 62
    .local v0, "otherMetadata":Landroidx/car/app/model/Metadata;
    iget-object v1, p0, Landroidx/car/app/model/Metadata;->mPlace:Landroidx/car/app/model/Place;

    iget-object v2, v0, Landroidx/car/app/model/Metadata;->mPlace:Landroidx/car/app/model/Place;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getPlace()Landroidx/car/app/model/Place;
    .locals 1

    .line 44
    iget-object v0, p0, Landroidx/car/app/model/Metadata;->mPlace:Landroidx/car/app/model/Place;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 49
    iget-object v0, p0, Landroidx/car/app/model/Metadata;->mPlace:Landroidx/car/app/model/Place;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
