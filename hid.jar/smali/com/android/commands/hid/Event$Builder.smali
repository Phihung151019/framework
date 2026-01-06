.class Lcom/android/commands/hid/Event$Builder;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/hid/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation


# instance fields
.field private mEvent:Lcom/android/commands/hid/Event;


# direct methods
.method static bridge synthetic -$$Nest$msetCommand(Lcom/android/commands/hid/Event$Builder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/commands/hid/Event$Builder;->setCommand(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Lcom/android/commands/hid/Event;

    invoke-direct {v0}, Lcom/android/commands/hid/Event;-><init>()V

    iput-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    .line 144
    return-void
.end method

.method private setCommand(Ljava/lang/String;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0, p1}, Lcom/android/commands/hid/Event;->-$$Nest$fputmCommand(Lcom/android/commands/hid/Event;Ljava/lang/String;)V

    .line 152
    return-void
.end method


# virtual methods
.method public build()Lcom/android/commands/hid/Event;
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0}, Lcom/android/commands/hid/Event;->-$$Nest$fgetmId(Lcom/android/commands/hid/Event;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 201
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0}, Lcom/android/commands/hid/Event;->-$$Nest$fgetmCommand(Lcom/android/commands/hid/Event;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 204
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0}, Lcom/android/commands/hid/Event;->-$$Nest$fgetmCommand(Lcom/android/commands/hid/Event;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "register"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0}, Lcom/android/commands/hid/Event;->-$$Nest$fgetmDescriptor(Lcom/android/commands/hid/Event;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Device registration is missing descriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0}, Lcom/android/commands/hid/Event;->-$$Nest$fgetmCommand(Lcom/android/commands/hid/Event;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "set_get_report_response"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0}, Lcom/android/commands/hid/Event;->-$$Nest$fgetmReport(Lcom/android/commands/hid/Event;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 211
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Report command is missing response data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0}, Lcom/android/commands/hid/Event;->-$$Nest$fgetmCommand(Lcom/android/commands/hid/Event;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "send_set_report_reply"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 215
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0}, Lcom/android/commands/hid/Event;->-$$Nest$fgetmReply(Lcom/android/commands/hid/Event;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 216
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Reply command is missing reply"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_5
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0}, Lcom/android/commands/hid/Event;->-$$Nest$fgetmCommand(Lcom/android/commands/hid/Event;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "delay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 219
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0}, Lcom/android/commands/hid/Event;->-$$Nest$fgetmDuration(Lcom/android/commands/hid/Event;)I

    move-result v0

    if-lez v0, :cond_6

    goto :goto_2

    .line 220
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Delay has missing or invalid duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_7
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0}, Lcom/android/commands/hid/Event;->-$$Nest$fgetmCommand(Lcom/android/commands/hid/Event;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "report"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 223
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0}, Lcom/android/commands/hid/Event;->-$$Nest$fgetmReport(Lcom/android/commands/hid/Event;)[B

    move-result-object v0

    if-eqz v0, :cond_8

    goto :goto_2

    .line 224
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Report command is missing report data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    return-object v0

    .line 202
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Event does not contain a command"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No event id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBus(Lcom/android/commands/hid/Event$Bus;)V
    .locals 1
    .param p1, "bus"    # Lcom/android/commands/hid/Event$Bus;

    .line 187
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0, p1}, Lcom/android/commands/hid/Event;->-$$Nest$fputmBus(Lcom/android/commands/hid/Event;Lcom/android/commands/hid/Event$Bus;)V

    .line 188
    return-void
.end method

.method public setDescriptor([B)V
    .locals 1
    .param p1, "descriptor"    # [B

    .line 163
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0, p1}, Lcom/android/commands/hid/Event;->-$$Nest$fputmDescriptor(Lcom/android/commands/hid/Event;[B)V

    .line 164
    return-void
.end method

.method public setDuration(I)V
    .locals 1
    .param p1, "duration"    # I

    .line 191
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0, p1}, Lcom/android/commands/hid/Event;->-$$Nest$fputmDuration(Lcom/android/commands/hid/Event;I)V

    .line 192
    return-void
.end method

.method public setFeatureReports(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[B>;)V"
        }
    .end annotation

    .line 171
    .local p1, "reports":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0, p1}, Lcom/android/commands/hid/Event;->-$$Nest$fputmFeatureReports(Lcom/android/commands/hid/Event;Landroid/util/SparseArray;)V

    .line 172
    return-void
.end method

.method public setId(I)V
    .locals 1
    .param p1, "id"    # I

    .line 147
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0, p1}, Lcom/android/commands/hid/Event;->-$$Nest$fputmId(Lcom/android/commands/hid/Event;I)V

    .line 148
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0, p1}, Lcom/android/commands/hid/Event;->-$$Nest$fputmName(Lcom/android/commands/hid/Event;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public setOutputs(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/nio/ByteBuffer;",
            "[B>;)V"
        }
    .end annotation

    .line 175
    .local p1, "outputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/nio/ByteBuffer;[B>;"
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0, p1}, Lcom/android/commands/hid/Event;->-$$Nest$fputmOutputs(Lcom/android/commands/hid/Event;Ljava/util/Map;)V

    .line 176
    return-void
.end method

.method public setPid(I)V
    .locals 1
    .param p1, "pid"    # I

    .line 183
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0, p1}, Lcom/android/commands/hid/Event;->-$$Nest$fputmPid(Lcom/android/commands/hid/Event;I)V

    .line 184
    return-void
.end method

.method public setReply(Z)V
    .locals 2
    .param p1, "success"    # Z

    .line 195
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/commands/hid/Event;->-$$Nest$fputmReply(Lcom/android/commands/hid/Event;Ljava/lang/Boolean;)V

    .line 196
    return-void
.end method

.method public setReport([B)V
    .locals 1
    .param p1, "report"    # [B

    .line 167
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0, p1}, Lcom/android/commands/hid/Event;->-$$Nest$fputmReport(Lcom/android/commands/hid/Event;[B)V

    .line 168
    return-void
.end method

.method public setUniq(Ljava/lang/String;)V
    .locals 1
    .param p1, "uniq"    # Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0, p1}, Lcom/android/commands/hid/Event;->-$$Nest$fputmUniq(Lcom/android/commands/hid/Event;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public setVid(I)V
    .locals 1
    .param p1, "vid"    # I

    .line 179
    iget-object v0, p0, Lcom/android/commands/hid/Event$Builder;->mEvent:Lcom/android/commands/hid/Event;

    invoke-static {v0, p1}, Lcom/android/commands/hid/Event;->-$$Nest$fputmVid(Lcom/android/commands/hid/Event;I)V

    .line 180
    return-void
.end method
