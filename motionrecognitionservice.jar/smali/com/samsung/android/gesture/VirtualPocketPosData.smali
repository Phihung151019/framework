.class Lcom/samsung/android/gesture/VirtualPocketPosData;
.super Ljava/lang/Object;
.source "PocketSensitivityManager.java"


# instance fields
.field private pedoCase:I

.field private pedoState:I

.field private posCase:I

.field private posState:I

.field private state:I

.field private version:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .line 271
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketPosData;->state:I

    return v0
.end method

.method public getpedoCase()I
    .locals 1

    .line 295
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketPosData;->pedoCase:I

    return v0
.end method

.method public getpedoState()I
    .locals 1

    .line 289
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketPosData;->pedoState:I

    return v0
.end method

.method public getposCase()I
    .locals 1

    .line 283
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketPosData;->posCase:I

    return v0
.end method

.method public getposState()I
    .locals 1

    .line 277
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketPosData;->posState:I

    return v0
.end method

.method public getversion()I
    .locals 1

    .line 301
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketPosData;->version:I

    return v0
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 274
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketPosData;->state:I

    .line 275
    return-void
.end method

.method public setpedoCase(I)V
    .locals 0
    .param p1, "pedocase"    # I

    .line 298
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketPosData;->pedoCase:I

    .line 299
    return-void
.end method

.method public setpedoState(I)V
    .locals 0
    .param p1, "pedostate"    # I

    .line 292
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketPosData;->pedoState:I

    .line 293
    return-void
.end method

.method public setposCase(I)V
    .locals 0
    .param p1, "poscase"    # I

    .line 286
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketPosData;->posCase:I

    .line 287
    return-void
.end method

.method public setposState(I)V
    .locals 0
    .param p1, "posstate"    # I

    .line 280
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketPosData;->posState:I

    .line 281
    return-void
.end method

.method public setversion(I)V
    .locals 0
    .param p1, "version"    # I

    .line 304
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketPosData;->version:I

    .line 305
    return-void
.end method
