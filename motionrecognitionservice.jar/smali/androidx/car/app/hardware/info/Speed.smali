.class public final Landroidx/car/app/hardware/info/Speed;
.super Ljava/lang/Object;
.source "Speed.java"


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x3
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/hardware/info/Speed$Builder;
    }
.end annotation


# instance fields
.field private final mDisplaySpeedMetersPerSecond:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mRawSpeedMetersPerSecond:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpeedDisplayUnit:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    sget-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_FLOAT:Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/Speed;->mRawSpeedMetersPerSecond:Landroidx/car/app/hardware/common/CarValue;

    .line 126
    sget-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_FLOAT:Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/Speed;->mDisplaySpeedMetersPerSecond:Landroidx/car/app/hardware/common/CarValue;

    .line 127
    sget-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_INTEGER:Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/Speed;->mSpeedDisplayUnit:Landroidx/car/app/hardware/common/CarValue;

    .line 128
    return-void
.end method

.method constructor <init>(Landroidx/car/app/hardware/info/Speed$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/hardware/info/Speed$Builder;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iget-object v0, p1, Landroidx/car/app/hardware/info/Speed$Builder;->mRawSpeedMetersPerSecond:Landroidx/car/app/hardware/common/CarValue;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/Speed;->mRawSpeedMetersPerSecond:Landroidx/car/app/hardware/common/CarValue;

    .line 119
    iget-object v0, p1, Landroidx/car/app/hardware/info/Speed$Builder;->mDisplaySpeedMetersPerSecond:Landroidx/car/app/hardware/common/CarValue;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/Speed;->mDisplaySpeedMetersPerSecond:Landroidx/car/app/hardware/common/CarValue;

    .line 120
    iget-object v0, p1, Landroidx/car/app/hardware/info/Speed$Builder;->mSpeedDisplayUnit:Landroidx/car/app/hardware/common/CarValue;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/Speed;->mSpeedDisplayUnit:Landroidx/car/app/hardware/common/CarValue;

    .line 121
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 103
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 104
    return v0

    .line 106
    :cond_0
    instance-of v1, p1, Landroidx/car/app/hardware/info/Speed;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 107
    return v2

    .line 109
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/hardware/info/Speed;

    .line 111
    .local v1, "otherSpeed":Landroidx/car/app/hardware/info/Speed;
    invoke-virtual {p0}, Landroidx/car/app/hardware/info/Speed;->getRawSpeedMetersPerSecond()Landroidx/car/app/hardware/common/CarValue;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/car/app/hardware/info/Speed;->getRawSpeedMetersPerSecond()Landroidx/car/app/hardware/common/CarValue;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 112
    invoke-virtual {p0}, Landroidx/car/app/hardware/info/Speed;->getDisplaySpeedMetersPerSecond()Landroidx/car/app/hardware/common/CarValue;

    move-result-object v3

    .line 113
    invoke-virtual {v1}, Landroidx/car/app/hardware/info/Speed;->getDisplaySpeedMetersPerSecond()Landroidx/car/app/hardware/common/CarValue;

    move-result-object v4

    .line 112
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/hardware/info/Speed;->mSpeedDisplayUnit:Landroidx/car/app/hardware/common/CarValue;

    iget-object v4, v1, Landroidx/car/app/hardware/info/Speed;->mSpeedDisplayUnit:Landroidx/car/app/hardware/common/CarValue;

    .line 114
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 111
    :goto_0
    return v0
.end method

.method public getDisplaySpeedMetersPerSecond()Landroidx/car/app/hardware/common/CarValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Landroidx/car/app/hardware/info/Speed;->mDisplaySpeedMetersPerSecond:Landroidx/car/app/hardware/common/CarValue;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/hardware/common/CarValue;

    return-object v0
.end method

.method public getRawSpeedMetersPerSecond()Landroidx/car/app/hardware/common/CarValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Landroidx/car/app/hardware/info/Speed;->mRawSpeedMetersPerSecond:Landroidx/car/app/hardware/common/CarValue;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/hardware/common/CarValue;

    return-object v0
.end method

.method public getSpeedDisplayUnit()Landroidx/car/app/hardware/common/CarValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Landroidx/car/app/hardware/info/Speed;->mSpeedDisplayUnit:Landroidx/car/app/hardware/common/CarValue;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/hardware/common/CarValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 97
    invoke-virtual {p0}, Landroidx/car/app/hardware/info/Speed;->getRawSpeedMetersPerSecond()Landroidx/car/app/hardware/common/CarValue;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/car/app/hardware/info/Speed;->getDisplaySpeedMetersPerSecond()Landroidx/car/app/hardware/common/CarValue;

    move-result-object v1

    iget-object v2, p0, Landroidx/car/app/hardware/info/Speed;->mSpeedDisplayUnit:Landroidx/car/app/hardware/common/CarValue;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ raw speed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    invoke-virtual {p0}, Landroidx/car/app/hardware/info/Speed;->getRawSpeedMetersPerSecond()Landroidx/car/app/hardware/common/CarValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", display speed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Landroidx/car/app/hardware/info/Speed;->getDisplaySpeedMetersPerSecond()Landroidx/car/app/hardware/common/CarValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speed display unit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/hardware/info/Speed;->mSpeedDisplayUnit:Landroidx/car/app/hardware/common/CarValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    return-object v0
.end method
