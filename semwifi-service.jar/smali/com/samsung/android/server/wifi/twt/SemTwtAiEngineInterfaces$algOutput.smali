.class public Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "algOutput"
.end annotation


# instance fields
.field public callPeriod:I

.field public intval:I

.field public mTbufThdFlag:Z

.field public mTbufThreshold:I

.field public needSessionRenewal:Z

.field public overflowThd:I

.field public sp:I

.field public windowSize:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->needSessionRenewal:Z

    .line 6
    .line 7
    const/16 v0, 0x5000

    .line 8
    .line 9
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 10
    .line 11
    const/16 v0, 0x2800

    .line 12
    .line 13
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 14
    .line 15
    const/16 v0, 0x834

    .line 16
    .line 17
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->overflowThd:I

    .line 18
    .line 19
    const/16 v1, 0xbea

    .line 20
    .line 21
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->callPeriod:I

    .line 22
    .line 23
    const/16 v1, 0x32

    .line 24
    .line 25
    iput v1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->windowSize:I

    .line 26
    .line 27
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->mTbufThdFlag:Z

    .line 28
    .line 29
    iput v0, p0, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->mTbufThreshold:I

    .line 30
    .line 31
    return-void
.end method
