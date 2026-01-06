.class Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingHandler;
.super Landroid/os/Handler;
.source "MultiFoldingSequenceCheckAuror.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiFoldingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;


# direct methods
.method public constructor <init>(Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingHandler;->this$0:Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;

    .line 175
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 176
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FLD_SEQ] handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SENSORBD"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x2bc

    if-ne v0, v2, :cond_1

    .line 183
    iget-object v0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingHandler;->this$0:Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;

    invoke-static {v0}, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->-$$Nest$mreadCounter(Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;)Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->-$$Nest$sfputmErrorData(Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;)V

    .line 185
    invoke-static {}, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->-$$Nest$sfgetmErrorData()Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;->count:I

    .line 186
    .local v0, "inverseFoldCount":I
    invoke-static {}, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->-$$Nest$sfgetmErrorData()Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;->dateTime:Ljava/lang/String;

    .line 187
    .local v2, "datetime":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->-$$Nest$sfgetmErrorData()Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$ErrorData;->type:Ljava/lang/String;

    .line 189
    .local v3, "type":Ljava/lang/String;
    if-gez v0, :cond_0

    return-void

    .line 191
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingHandler;->this$0:Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;

    invoke-static {v4}, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->-$$Nest$fgetmInverseFoldingCount(Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;)I

    move-result v4

    if-le v0, v4, :cond_1

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FLD_SEQ] Count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingHandler;->this$0:Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;

    invoke-static {v5}, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->-$$Nest$fgetmInverseFoldingCount(Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v4, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingHandler;->this$0:Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;

    invoke-static {v4, v0}, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->-$$Nest$fputmInverseFoldingCount(Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;I)V

    .line 196
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 199
    .local v4, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "INV_CNT"

    iget-object v6, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingHandler;->this$0:Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;

    invoke-static {v6}, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->-$$Nest$fgetmInverseFoldingCount(Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 200
    const-string v5, "TIME"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const-string v5, "TYPE"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    nop

    .line 207
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 208
    .local v5, "data":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FLD_SEQ] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v1, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingHandler;->this$0:Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;

    invoke-static {v1, v5}, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->-$$Nest$msendSFLDDATA(Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    .end local v5    # "data":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 203
    .local v5, "e":Lorg/json/JSONException;
    const-string v6, "[FLD_SEQ] Formatting error.."

    invoke-static {v1, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void

    .line 213
    .end local v0    # "inverseFoldCount":I
    .end local v2    # "datetime":Ljava/lang/String;
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_0
    return-void
.end method
