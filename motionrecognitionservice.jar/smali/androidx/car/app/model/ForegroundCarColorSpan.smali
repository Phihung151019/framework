.class public final Landroidx/car/app/model/ForegroundCarColorSpan;
.super Landroidx/car/app/model/CarSpan;
.source "ForegroundCarColorSpan.java"


# instance fields
.field private final mCarColor:Landroidx/car/app/model/CarColor;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 107
    invoke-direct {p0}, Landroidx/car/app/model/CarSpan;-><init>()V

    .line 108
    sget-object v0, Landroidx/car/app/model/CarColor;->DEFAULT:Landroidx/car/app/model/CarColor;

    iput-object v0, p0, Landroidx/car/app/model/ForegroundCarColorSpan;->mCarColor:Landroidx/car/app/model/CarColor;

    .line 109
    return-void
.end method

.method private constructor <init>(Landroidx/car/app/model/CarColor;)V
    .locals 0
    .param p1, "carColor"    # Landroidx/car/app/model/CarColor;

    .line 103
    invoke-direct {p0}, Landroidx/car/app/model/CarSpan;-><init>()V

    .line 104
    iput-object p1, p0, Landroidx/car/app/model/ForegroundCarColorSpan;->mCarColor:Landroidx/car/app/model/CarColor;

    .line 105
    return-void
.end method

.method public static create(Landroidx/car/app/model/CarColor;)Landroidx/car/app/model/ForegroundCarColorSpan;
    .locals 2
    .param p0, "carColor"    # Landroidx/car/app/model/CarColor;

    .line 69
    sget-object v0, Landroidx/car/app/model/constraints/CarColorConstraints;->UNCONSTRAINED:Landroidx/car/app/model/constraints/CarColorConstraints;

    invoke-virtual {v0, p0}, Landroidx/car/app/model/constraints/CarColorConstraints;->validateOrThrow(Landroidx/car/app/model/CarColor;)V

    .line 70
    new-instance v0, Landroidx/car/app/model/ForegroundCarColorSpan;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/CarColor;

    invoke-direct {v0, v1}, Landroidx/car/app/model/ForegroundCarColorSpan;-><init>(Landroidx/car/app/model/CarColor;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 92
    if-ne p0, p1, :cond_0

    .line 93
    const/4 v0, 0x1

    return v0

    .line 95
    :cond_0
    instance-of v0, p1, Landroidx/car/app/model/ForegroundCarColorSpan;

    if-nez v0, :cond_1

    .line 96
    const/4 v0, 0x0

    return v0

    .line 98
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/car/app/model/ForegroundCarColorSpan;

    .line 100
    .local v0, "otherSpan":Landroidx/car/app/model/ForegroundCarColorSpan;
    iget-object v1, p0, Landroidx/car/app/model/ForegroundCarColorSpan;->mCarColor:Landroidx/car/app/model/CarColor;

    iget-object v2, v0, Landroidx/car/app/model/ForegroundCarColorSpan;->mCarColor:Landroidx/car/app/model/CarColor;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getColor()Landroidx/car/app/model/CarColor;
    .locals 1

    .line 76
    iget-object v0, p0, Landroidx/car/app/model/ForegroundCarColorSpan;->mCarColor:Landroidx/car/app/model/CarColor;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 87
    iget-object v0, p0, Landroidx/car/app/model/ForegroundCarColorSpan;->mCarColor:Landroidx/car/app/model/CarColor;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[color: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/ForegroundCarColorSpan;->mCarColor:Landroidx/car/app/model/CarColor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
