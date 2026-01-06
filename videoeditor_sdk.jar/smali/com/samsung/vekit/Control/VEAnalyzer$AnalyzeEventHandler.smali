.class Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;
.super Landroid/os/Handler;
.source "VEAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vekit/Control/VEAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnalyzeEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/vekit/Control/VEAnalyzer;


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Control/VEAnalyzer;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 131
    iput-object p1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    .line 132
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 133
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 137
    iget v0, p1, Landroid/os/Message;->what:I

    if-ltz v0, :cond_c

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->values()[Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    goto/16 :goto_1

    .line 141
    :cond_0
    invoke-static {}, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->values()[Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    aget-object v0, v0, v1

    .line 142
    .local v0, "status":Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;
    sget-object v1, Lcom/samsung/vekit/Control/VEAnalyzer$1;->$SwitchMap$com$samsung$vekit$Control$VEAnalyzer$AnalyzeStatus:[I

    invoke-virtual {v0}, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 197
    :pswitch_0
    invoke-static {}, Lcom/samsung/vekit/Common/Type/AnalyzeType;->values()[Lcom/samsung/vekit/Common/Type/AnalyzeType;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    aget-object v1, v1, v2

    .line 198
    .local v1, "analyzeType":Lcom/samsung/vekit/Common/Type/AnalyzeType;
    invoke-static {}, Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;->values()[Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    aget-object v2, v2, v3

    .line 199
    .local v2, "analyzeSolutionErrorType":Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;
    iget-object v3, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v3, v3, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    if-eqz v3, :cond_1

    .line 200
    iget-object v3, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v3, v3, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    invoke-interface {v3, v1, v2}, Lcom/samsung/vekit/Listener/AnalyzeStatusListener;->onSolutionError(Lcom/samsung/vekit/Common/Type/AnalyzeType;Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;)V

    .line 201
    :cond_1
    return-void

    .line 190
    .end local v1    # "analyzeType":Lcom/samsung/vekit/Common/Type/AnalyzeType;
    .end local v2    # "analyzeSolutionErrorType":Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;
    :pswitch_1
    invoke-static {}, Lcom/samsung/vekit/Common/Type/AnalyzeType;->values()[Lcom/samsung/vekit/Common/Type/AnalyzeType;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    aget-object v1, v1, v2

    .line 191
    .restart local v1    # "analyzeType":Lcom/samsung/vekit/Common/Type/AnalyzeType;
    iget-object v2, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v2, v2, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    if-eqz v2, :cond_2

    .line 192
    iget-object v2, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v2, v2, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    invoke-interface {v2, v1}, Lcom/samsung/vekit/Listener/AnalyzeStatusListener;->onSolutionUnloaded(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V

    .line 193
    :cond_2
    iget-object v2, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v2, v2, Lcom/samsung/vekit/Control/VEAnalyzer;->solutionLoadChecker:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    return-void

    .line 183
    .end local v1    # "analyzeType":Lcom/samsung/vekit/Common/Type/AnalyzeType;
    :pswitch_2
    invoke-static {}, Lcom/samsung/vekit/Common/Type/AnalyzeType;->values()[Lcom/samsung/vekit/Common/Type/AnalyzeType;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    aget-object v1, v1, v2

    .line 184
    .restart local v1    # "analyzeType":Lcom/samsung/vekit/Common/Type/AnalyzeType;
    iget-object v2, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v2, v2, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    if-eqz v2, :cond_3

    .line 185
    iget-object v2, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v2, v2, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    invoke-interface {v2, v1}, Lcom/samsung/vekit/Listener/AnalyzeStatusListener;->onSolutionLoaded(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V

    .line 186
    :cond_3
    iget-object v2, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v2, v2, Lcom/samsung/vekit/Control/VEAnalyzer;->solutionLoadChecker:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    return-void

    .line 177
    .end local v1    # "analyzeType":Lcom/samsung/vekit/Common/Type/AnalyzeType;
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {v1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 178
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {v1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->onAnalyzePaused()V

    .line 179
    :cond_4
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v1, v1, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    if-eqz v1, :cond_b

    .line 180
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v1, v1, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    invoke-interface {v1}, Lcom/samsung/vekit/Listener/AnalyzeStatusListener;->onAnalyzePaused()V

    goto/16 :goto_0

    .line 171
    :pswitch_4
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {v1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 172
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {v1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->onAnalyzeCompleted()V

    .line 173
    :cond_5
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v1, v1, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    if-eqz v1, :cond_b

    .line 174
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v1, v1, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    invoke-interface {v1}, Lcom/samsung/vekit/Listener/AnalyzeStatusListener;->onAnalyzeCompleted()V

    goto/16 :goto_0

    .line 165
    :pswitch_5
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {v1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 166
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {v1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->onAnalyzeFailed()V

    .line 167
    :cond_6
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v1, v1, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    if-eqz v1, :cond_b

    .line 168
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v1, v1, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    invoke-interface {v1}, Lcom/samsung/vekit/Listener/AnalyzeStatusListener;->onAnalyzeFailed()V

    goto :goto_0

    .line 159
    :pswitch_6
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {v1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 160
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {v1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->onAnalyzeStopped()V

    .line 161
    :cond_7
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v1, v1, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    if-eqz v1, :cond_b

    .line 162
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v1, v1, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    invoke-interface {v1}, Lcom/samsung/vekit/Listener/AnalyzeStatusListener;->onAnalyzeStopped()V

    goto :goto_0

    .line 146
    :pswitch_7
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v1, v1, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    if-eqz v1, :cond_b

    .line 147
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v1, v1, Lcom/samsung/vekit/Control/VEAnalyzer;->status:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    sget-object v2, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->INITIALIZED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    if-ne v1, v2, :cond_9

    .line 148
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {v1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 149
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {v1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->onAnalyzeStarted()V

    .line 150
    :cond_8
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v1, v1, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    invoke-interface {v1}, Lcom/samsung/vekit/Listener/AnalyzeStatusListener;->onAnalyzeStarted()V

    goto :goto_0

    .line 151
    :cond_9
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v1, v1, Lcom/samsung/vekit/Control/VEAnalyzer;->status:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    sget-object v2, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->PAUSED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    if-ne v1, v2, :cond_b

    .line 152
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {v1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 153
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {v1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->onAnalyzeResumed()V

    .line 154
    :cond_a
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v1, v1, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    invoke-interface {v1}, Lcom/samsung/vekit/Listener/AnalyzeStatusListener;->onAnalyzeResumed()V

    goto :goto_0

    .line 144
    :pswitch_8
    nop

    .line 204
    :cond_b
    :goto_0
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iput-object v0, v1, Lcom/samsung/vekit/Control/VEAnalyzer;->status:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    .line 205
    return-void

    .line 138
    .end local v0    # "status":Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;
    :cond_c
    :goto_1
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {v0}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$000(Lcom/samsung/vekit/Control/VEAnalyzer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Analyzer Status is invalid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
