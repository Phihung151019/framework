.class public Lcom/samsung/vekit/Common/Object/FilterOption;
.super Ljava/lang/Object;
.source "FilterOption.java"


# instance fields
.field private contrast:F

.field private grain:F

.field private saturation:F

.field private temperature:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->contrast:F

    .line 11
    iput v0, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->saturation:F

    .line 12
    iput v0, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->temperature:F

    .line 13
    iput v0, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->grain:F

    .line 14
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "contrast"    # F
    .param p2, "saturation"    # F
    .param p3, "temperature"    # F
    .param p4, "grain"    # F

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->contrast:F

    .line 18
    iput p2, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->saturation:F

    .line 19
    iput p3, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->temperature:F

    .line 20
    iput p4, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->grain:F

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/samsung/vekit/Common/Object/FilterOption;)V
    .locals 1
    .param p1, "filterOption"    # Lcom/samsung/vekit/Common/Object/FilterOption;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iget v0, p1, Lcom/samsung/vekit/Common/Object/FilterOption;->contrast:F

    iput v0, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->contrast:F

    .line 25
    iget v0, p1, Lcom/samsung/vekit/Common/Object/FilterOption;->saturation:F

    iput v0, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->saturation:F

    .line 26
    iget v0, p1, Lcom/samsung/vekit/Common/Object/FilterOption;->temperature:F

    iput v0, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->temperature:F

    .line 27
    iget v0, p1, Lcom/samsung/vekit/Common/Object/FilterOption;->grain:F

    iput v0, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->grain:F

    .line 28
    return-void
.end method


# virtual methods
.method public getContrast()F
    .locals 1

    .line 31
    iget v0, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->contrast:F

    return v0
.end method

.method public getGrain()F
    .locals 1

    .line 55
    iget v0, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->grain:F

    return v0
.end method

.method public getSaturation()F
    .locals 1

    .line 39
    iget v0, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->saturation:F

    return v0
.end method

.method public getTemperature()F
    .locals 1

    .line 47
    iget v0, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->temperature:F

    return v0
.end method

.method public setContrast(F)V
    .locals 0
    .param p1, "contrast"    # F

    .line 35
    iput p1, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->contrast:F

    .line 36
    return-void
.end method

.method public setGrain(F)V
    .locals 0
    .param p1, "grain"    # F

    .line 59
    iput p1, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->grain:F

    .line 60
    return-void
.end method

.method public setSaturation(F)V
    .locals 0
    .param p1, "saturation"    # F

    .line 43
    iput p1, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->saturation:F

    .line 44
    return-void
.end method

.method public setTemperature(F)V
    .locals 0
    .param p1, "temperature"    # F

    .line 51
    iput p1, p0, Lcom/samsung/vekit/Common/Object/FilterOption;->temperature:F

    .line 52
    return-void
.end method
