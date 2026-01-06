.class public final Landroidx/car/app/hardware/info/Speed$Builder;
.super Ljava/lang/Object;
.source "Speed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/hardware/info/Speed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mDisplaySpeedMetersPerSecond:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field mRawSpeedMetersPerSecond:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field mSpeedDisplayUnit:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    sget-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_FLOAT:Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/Speed$Builder;->mRawSpeedMetersPerSecond:Landroidx/car/app/hardware/common/CarValue;

    .line 133
    sget-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_FLOAT:Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/Speed$Builder;->mDisplaySpeedMetersPerSecond:Landroidx/car/app/hardware/common/CarValue;

    .line 134
    sget-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_INTEGER:Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/Speed$Builder;->mSpeedDisplayUnit:Landroidx/car/app/hardware/common/CarValue;

    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/hardware/info/Speed;
    .locals 1

    .line 179
    new-instance v0, Landroidx/car/app/hardware/info/Speed;

    invoke-direct {v0, p0}, Landroidx/car/app/hardware/info/Speed;-><init>(Landroidx/car/app/hardware/info/Speed$Builder;)V

    return-object v0
.end method

.method public setDisplaySpeedMetersPerSecond(Landroidx/car/app/hardware/common/CarValue;)Landroidx/car/app/hardware/info/Speed$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Float;",
            ">;)",
            "Landroidx/car/app/hardware/info/Speed$Builder;"
        }
    .end annotation

    .line 156
    .local p1, "displaySpeedMetersPerSecond":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<Ljava/lang/Float;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/Speed$Builder;->mDisplaySpeedMetersPerSecond:Landroidx/car/app/hardware/common/CarValue;

    .line 157
    return-object p0
.end method

.method public setRawSpeedMetersPerSecond(Landroidx/car/app/hardware/common/CarValue;)Landroidx/car/app/hardware/info/Speed$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Float;",
            ">;)",
            "Landroidx/car/app/hardware/info/Speed$Builder;"
        }
    .end annotation

    .line 144
    .local p1, "rawSpeedMetersPerSecond":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<Ljava/lang/Float;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/Speed$Builder;->mRawSpeedMetersPerSecond:Landroidx/car/app/hardware/common/CarValue;

    .line 145
    return-object p0
.end method

.method public setSpeedDisplayUnit(Landroidx/car/app/hardware/common/CarValue;)Landroidx/car/app/hardware/info/Speed$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/car/app/hardware/info/Speed$Builder;"
        }
    .end annotation

    .line 170
    .local p1, "speedDisplayUnit":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/Speed$Builder;->mSpeedDisplayUnit:Landroidx/car/app/hardware/common/CarValue;

    .line 171
    return-object p0
.end method
