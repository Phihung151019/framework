.class public final Landroidx/car/app/hardware/info/Gyroscope;
.super Ljava/lang/Object;
.source "Gyroscope.java"


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x3
.end annotation


# instance fields
.field private final mRotations:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    sget-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_FLOAT_LIST:Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/Gyroscope;->mRotations:Landroidx/car/app/hardware/common/CarValue;

    .line 89
    return-void
.end method

.method public constructor <init>(Landroidx/car/app/hardware/common/CarValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;>;)V"
        }
    .end annotation

    .line 82
    .local p1, "rotations":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<Ljava/util/List<Ljava/lang/Float;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/Gyroscope;->mRotations:Landroidx/car/app/hardware/common/CarValue;

    .line 84
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 66
    if-ne p0, p1, :cond_0

    .line 67
    const/4 v0, 0x1

    return v0

    .line 69
    :cond_0
    instance-of v0, p1, Landroidx/car/app/hardware/info/Gyroscope;

    if-nez v0, :cond_1

    .line 70
    const/4 v0, 0x0

    return v0

    .line 72
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/car/app/hardware/info/Gyroscope;

    .line 74
    .local v0, "otherGyroscope":Landroidx/car/app/hardware/info/Gyroscope;
    iget-object v1, p0, Landroidx/car/app/hardware/info/Gyroscope;->mRotations:Landroidx/car/app/hardware/common/CarValue;

    iget-object v2, v0, Landroidx/car/app/hardware/info/Gyroscope;->mRotations:Landroidx/car/app/hardware/common/CarValue;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getRotations()Landroidx/car/app/hardware/common/CarValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Landroidx/car/app/hardware/info/Gyroscope;->mRotations:Landroidx/car/app/hardware/common/CarValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 61
    iget-object v0, p0, Landroidx/car/app/hardware/info/Gyroscope;->mRotations:Landroidx/car/app/hardware/common/CarValue;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ rotations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/hardware/info/Gyroscope;->mRotations:Landroidx/car/app/hardware/common/CarValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
