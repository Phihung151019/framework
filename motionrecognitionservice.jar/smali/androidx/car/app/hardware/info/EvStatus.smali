.class public Landroidx/car/app/hardware/info/EvStatus;
.super Ljava/lang/Object;
.source "EvStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/hardware/info/EvStatus$Builder;
    }
.end annotation


# instance fields
.field private final mEvChargePortConnected:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mEvChargePortOpen:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    sget-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_BOOLEAN:Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/EvStatus;->mEvChargePortOpen:Landroidx/car/app/hardware/common/CarValue;

    .line 93
    sget-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_BOOLEAN:Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/EvStatus;->mEvChargePortConnected:Landroidx/car/app/hardware/common/CarValue;

    .line 94
    return-void
.end method

.method constructor <init>(Landroidx/car/app/hardware/info/EvStatus$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/hardware/info/EvStatus$Builder;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iget-object v0, p1, Landroidx/car/app/hardware/info/EvStatus$Builder;->mEvChargePortConnected:Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/EvStatus;->mEvChargePortConnected:Landroidx/car/app/hardware/common/CarValue;

    .line 85
    iget-object v0, p1, Landroidx/car/app/hardware/info/EvStatus$Builder;->mEvChargePortOpen:Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/EvStatus;->mEvChargePortOpen:Landroidx/car/app/hardware/common/CarValue;

    .line 86
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 71
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 72
    return v0

    .line 74
    :cond_0
    instance-of v1, p1, Landroidx/car/app/hardware/info/EvStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 75
    return v2

    .line 77
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/hardware/info/EvStatus;

    .line 79
    .local v1, "otherEvStatus":Landroidx/car/app/hardware/info/EvStatus;
    iget-object v3, p0, Landroidx/car/app/hardware/info/EvStatus;->mEvChargePortConnected:Landroidx/car/app/hardware/common/CarValue;

    iget-object v4, v1, Landroidx/car/app/hardware/info/EvStatus;->mEvChargePortConnected:Landroidx/car/app/hardware/common/CarValue;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/hardware/info/EvStatus;->mEvChargePortOpen:Landroidx/car/app/hardware/common/CarValue;

    iget-object v4, v1, Landroidx/car/app/hardware/info/EvStatus;->mEvChargePortOpen:Landroidx/car/app/hardware/common/CarValue;

    .line 80
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 79
    :goto_0
    return v0
.end method

.method public getEvChargePortConnected()Landroidx/car/app/hardware/common/CarValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Landroidx/car/app/hardware/info/EvStatus;->mEvChargePortConnected:Landroidx/car/app/hardware/common/CarValue;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/hardware/common/CarValue;

    return-object v0
.end method

.method public getEvChargePortOpen()Landroidx/car/app/hardware/common/CarValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Landroidx/car/app/hardware/info/EvStatus;->mEvChargePortOpen:Landroidx/car/app/hardware/common/CarValue;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/hardware/common/CarValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 66
    iget-object v0, p0, Landroidx/car/app/hardware/info/EvStatus;->mEvChargePortOpen:Landroidx/car/app/hardware/common/CarValue;

    iget-object v1, p0, Landroidx/car/app/hardware/info/EvStatus;->mEvChargePortConnected:Landroidx/car/app/hardware/common/CarValue;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ EV charge port open: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/hardware/info/EvStatus;->mEvChargePortOpen:Landroidx/car/app/hardware/common/CarValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", EV charge port connected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/hardware/info/EvStatus;->mEvChargePortConnected:Landroidx/car/app/hardware/common/CarValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
