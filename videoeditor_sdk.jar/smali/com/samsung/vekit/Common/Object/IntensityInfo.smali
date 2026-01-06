.class public Lcom/samsung/vekit/Common/Object/IntensityInfo;
.super Ljava/lang/Object;
.source "IntensityInfo.java"


# instance fields
.field base:I

.field max:I

.field min:I

.field step:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/IntensityInfo;->min:I

    .line 18
    const/16 v1, 0x64

    iput v1, p0, Lcom/samsung/vekit/Common/Object/IntensityInfo;->max:I

    .line 19
    iput v0, p0, Lcom/samsung/vekit/Common/Object/IntensityInfo;->base:I

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/vekit/Common/Object/IntensityInfo;->step:I

    .line 21
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "base"    # I
    .param p4, "step"    # I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/samsung/vekit/Common/Object/IntensityInfo;->min:I

    .line 11
    iput p2, p0, Lcom/samsung/vekit/Common/Object/IntensityInfo;->max:I

    .line 12
    iput p3, p0, Lcom/samsung/vekit/Common/Object/IntensityInfo;->base:I

    .line 13
    iput p4, p0, Lcom/samsung/vekit/Common/Object/IntensityInfo;->step:I

    .line 14
    return-void
.end method


# virtual methods
.method public getBase()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/samsung/vekit/Common/Object/IntensityInfo;->base:I

    return v0
.end method

.method public getMax()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/samsung/vekit/Common/Object/IntensityInfo;->max:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/samsung/vekit/Common/Object/IntensityInfo;->min:I

    return v0
.end method

.method public getStep()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/samsung/vekit/Common/Object/IntensityInfo;->step:I

    return v0
.end method

.method public setBase(I)V
    .locals 0
    .param p1, "base"    # I

    .line 44
    iput p1, p0, Lcom/samsung/vekit/Common/Object/IntensityInfo;->base:I

    .line 45
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "max"    # I

    .line 36
    iput p1, p0, Lcom/samsung/vekit/Common/Object/IntensityInfo;->max:I

    .line 37
    return-void
.end method

.method public setMin(I)V
    .locals 0
    .param p1, "min"    # I

    .line 28
    iput p1, p0, Lcom/samsung/vekit/Common/Object/IntensityInfo;->min:I

    .line 29
    return-void
.end method

.method public setStep(I)V
    .locals 0
    .param p1, "step"    # I

    .line 52
    iput p1, p0, Lcom/samsung/vekit/Common/Object/IntensityInfo;->step:I

    .line 53
    return-void
.end method
