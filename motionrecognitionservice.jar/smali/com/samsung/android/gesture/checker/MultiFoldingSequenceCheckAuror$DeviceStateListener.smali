.class Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$DeviceStateListener;
.super Ljava/lang/Object;
.source "MultiFoldingSequenceCheckAuror.java"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceStateListener"
.end annotation


# instance fields
.field private mDeviceState:I


# direct methods
.method private constructor <init>(Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$DeviceStateListener;->mDeviceState:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$DeviceStateListener;-><init>(Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;)V

    return-void
.end method


# virtual methods
.method public onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
    .locals 3
    .param p1, "deviceState"    # Landroid/hardware/devicestate/DeviceState;

    .line 305
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v0

    .line 306
    .local v0, "state":I
    iget v1, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$DeviceStateListener;->mDeviceState:I

    if-eq v1, v0, :cond_0

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FLD_SEQ] onDeviceStateChanged(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$DeviceStateListener;->mDeviceState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SENSORBD"

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iput v0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$DeviceStateListener;->mDeviceState:I

    .line 320
    :cond_0
    return-void
.end method
