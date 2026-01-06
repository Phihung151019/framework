.class Lcom/samsung/android/gesture/MotionRecognitionSAR$2;
.super Ljava/lang/Object;
.source "MotionRecognitionSAR.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gesture/MotionRecognitionSAR;->enableSARDevice(ZJII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

.field final synthetic val$deviceId:J

.field final synthetic val$enable:Z

.field final synthetic val$extId:I

.field final synthetic val$slot:I


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;JIZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/gesture/MotionRecognitionSAR;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 878
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$2;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    iput-wide p2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$2;->val$deviceId:J

    iput p4, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$2;->val$extId:I

    iput-boolean p5, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$2;->val$enable:Z

    iput p6, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$2;->val$slot:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 881
    iget-wide v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$2;->val$deviceId:J

    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$2;->val$extId:I

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide v2, 0x400868092083L

    and-long/2addr v0, v2

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    const-string v1, ":"

    const-string v5, "MotionRecognitionService"

    if-nez v0, :cond_0

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SAR] enableSARDevice does not support extId:deviceID = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$2;->val$extId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$2;->val$deviceId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    return-void

    .line 886
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$2;->val$enable:Z

    if-eqz v0, :cond_1

    .line 887
    const-string v0, "on"

    move-object v9, v0

    .local v0, "action":Ljava/lang/String;
    goto :goto_0

    .line 889
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string v0, "off"

    move-object v9, v0

    .line 891
    .local v9, "action":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SAR] controlSARDevice ++ "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", extID:ID("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$2;->val$extId:I

    .line 892
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$2;->val$deviceId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), maskedID("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$2;->val$deviceId:J

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$2;->val$extId:I

    int-to-long v10, v1

    shl-long/2addr v10, v4

    or-long/2addr v6, v10

    and-long v1, v6, v2

    .line 893
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$2;->val$slot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 891
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$2;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    iget-wide v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$2;->val$deviceId:J

    iget v10, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$2;->val$slot:I

    iget v11, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$2;->val$extId:I

    invoke-static/range {v6 .. v11}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$mcallSARDeviceID(Lcom/samsung/android/gesture/MotionRecognitionSAR;JLjava/lang/String;II)V

    .line 896
    const-string v0, "[SAR] controlSARDevice -- "

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    return-void
.end method
