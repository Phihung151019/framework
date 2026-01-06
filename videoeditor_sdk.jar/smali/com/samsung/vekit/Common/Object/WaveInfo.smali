.class public Lcom/samsung/vekit/Common/Object/WaveInfo;
.super Ljava/lang/Object;
.source "WaveInfo.java"


# instance fields
.field private degree:F

.field private height:I

.field private speed:F

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/16 v0, 0x14

    iput v0, p0, Lcom/samsung/vekit/Common/Object/WaveInfo;->height:I

    .line 12
    iput v0, p0, Lcom/samsung/vekit/Common/Object/WaveInfo;->width:I

    .line 13
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/samsung/vekit/Common/Object/WaveInfo;->speed:F

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/WaveInfo;->degree:F

    .line 15
    return-void
.end method

.method public constructor <init>(IIFF)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "speed"    # F
    .param p4, "degree"    # F

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p2, p0, Lcom/samsung/vekit/Common/Object/WaveInfo;->height:I

    .line 19
    iput p1, p0, Lcom/samsung/vekit/Common/Object/WaveInfo;->width:I

    .line 20
    iput p3, p0, Lcom/samsung/vekit/Common/Object/WaveInfo;->speed:F

    .line 21
    iput p4, p0, Lcom/samsung/vekit/Common/Object/WaveInfo;->degree:F

    .line 22
    return-void
.end method


# virtual methods
.method public getDegree()F
    .locals 1

    .line 53
    iget v0, p0, Lcom/samsung/vekit/Common/Object/WaveInfo;->degree:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/samsung/vekit/Common/Object/WaveInfo;->height:I

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .line 49
    iget v0, p0, Lcom/samsung/vekit/Common/Object/WaveInfo;->speed:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/samsung/vekit/Common/Object/WaveInfo;->width:I

    return v0
.end method

.method public setDegree(F)V
    .locals 0
    .param p1, "degree"    # F

    .line 37
    iput p1, p0, Lcom/samsung/vekit/Common/Object/WaveInfo;->degree:F

    .line 38
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 25
    iput p1, p0, Lcom/samsung/vekit/Common/Object/WaveInfo;->height:I

    .line 26
    return-void
.end method

.method public setSpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    .line 33
    iput p1, p0, Lcom/samsung/vekit/Common/Object/WaveInfo;->speed:F

    .line 34
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 29
    iput p1, p0, Lcom/samsung/vekit/Common/Object/WaveInfo;->width:I

    .line 30
    return-void
.end method
