.class public Lcom/android/commands/uinput/Event$Builder;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/uinput/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mEvent:Lcom/android/commands/uinput/Event;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    new-instance v0, Lcom/android/commands/uinput/Event;

    invoke-direct {v0}, Lcom/android/commands/uinput/Event;-><init>()V

    iput-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    .line 207
    return-void
.end method


# virtual methods
.method public build()Lcom/android/commands/uinput/Event;
    .locals 4

    .line 276
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0}, Lcom/android/commands/uinput/Event;->-$$Nest$fgetmId(Lcom/android/commands/uinput/Event;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 278
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0}, Lcom/android/commands/uinput/Event;->-$$Nest$fgetmCommand(Lcom/android/commands/uinput/Event;)Lcom/android/commands/uinput/Event$Command;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 281
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0}, Lcom/android/commands/uinput/Event;->-$$Nest$fgetmCommand(Lcom/android/commands/uinput/Event;)Lcom/android/commands/uinput/Event$Command;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/commands/uinput/Event$Command;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 299
    :pswitch_0
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0}, Lcom/android/commands/uinput/Event;->-$$Nest$fgetmSyncToken(Lcom/android/commands/uinput/Event;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Sync command is missing sync token"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :pswitch_1
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0}, Lcom/android/commands/uinput/Event;->-$$Nest$fgetmInjections(Lcom/android/commands/uinput/Event;)[I

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 295
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Inject command is missing injection data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :pswitch_2
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0}, Lcom/android/commands/uinput/Event;->-$$Nest$fgetmDurationNanos(Lcom/android/commands/uinput/Event;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    goto :goto_0

    .line 290
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Delay has missing or invalid duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :pswitch_3
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0}, Lcom/android/commands/uinput/Event;->-$$Nest$fgetmConfiguration(Lcom/android/commands/uinput/Event;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 284
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Device registration is missing configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :goto_0
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    return-object v0

    .line 279
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Event does not contain a command"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No event id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAbsInfo(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lsrc/com/android/commands/uinput/InputAbsInfo;",
            ">;)V"
        }
    .end annotation

    .line 264
    .local p1, "absInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lsrc/com/android/commands/uinput/InputAbsInfo;>;"
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0, p1}, Lcom/android/commands/uinput/Event;->-$$Nest$fputmAbsInfo(Lcom/android/commands/uinput/Event;Landroid/util/SparseArray;)V

    .line 265
    return-void
.end method

.method public setBusId(I)V
    .locals 1
    .param p1, "busId"    # I

    .line 252
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0, p1}, Lcom/android/commands/uinput/Event;->-$$Nest$fputmBusId(Lcom/android/commands/uinput/Event;I)V

    .line 253
    return-void
.end method

.method public setCommand(Lcom/android/commands/uinput/Event$Command;)V
    .locals 1
    .param p1, "command"    # Lcom/android/commands/uinput/Event$Command;

    .line 214
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0, p1}, Lcom/android/commands/uinput/Event;->-$$Nest$fputmCommand(Lcom/android/commands/uinput/Event;Lcom/android/commands/uinput/Event$Command;)V

    .line 215
    return-void
.end method

.method public setConfiguration(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[I>;)V"
        }
    .end annotation

    .line 236
    .local p1, "configuration":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0, p1}, Lcom/android/commands/uinput/Event;->-$$Nest$fputmConfiguration(Lcom/android/commands/uinput/Event;Landroid/util/SparseArray;)V

    .line 237
    return-void
.end method

.method public setDurationNanos(J)V
    .locals 1
    .param p1, "durationNanos"    # J

    .line 256
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0, p1, p2}, Lcom/android/commands/uinput/Event;->-$$Nest$fputmDurationNanos(Lcom/android/commands/uinput/Event;J)V

    .line 257
    return-void
.end method

.method public setFfEffectsMax(I)V
    .locals 1
    .param p1, "ffEffectsMax"    # I

    .line 260
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0, p1}, Lcom/android/commands/uinput/Event;->-$$Nest$fputmFfEffectsMax(Lcom/android/commands/uinput/Event;I)V

    .line 261
    return-void
.end method

.method public setId(I)V
    .locals 1
    .param p1, "id"    # I

    .line 210
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0, p1}, Lcom/android/commands/uinput/Event;->-$$Nest$fputmId(Lcom/android/commands/uinput/Event;I)V

    .line 211
    return-void
.end method

.method public setInjections([I)V
    .locals 1
    .param p1, "events"    # [I

    .line 222
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0, p1}, Lcom/android/commands/uinput/Event;->-$$Nest$fputmInjections(Lcom/android/commands/uinput/Event;[I)V

    .line 223
    return-void
.end method

.method public setInputPort(Ljava/lang/String;)V
    .locals 1
    .param p1, "port"    # Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0, p1}, Lcom/android/commands/uinput/Event;->-$$Nest$fputmInputPort(Lcom/android/commands/uinput/Event;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0, p1}, Lcom/android/commands/uinput/Event;->-$$Nest$fputmName(Lcom/android/commands/uinput/Event;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public setProductId(I)V
    .locals 1
    .param p1, "productId"    # I

    .line 244
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0, p1}, Lcom/android/commands/uinput/Event;->-$$Nest$fputmProductId(Lcom/android/commands/uinput/Event;I)V

    .line 245
    return-void
.end method

.method public setSyncToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "syncToken"    # Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    const-string v1, "Sync token must not be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/commands/uinput/Event;->-$$Nest$fputmSyncToken(Lcom/android/commands/uinput/Event;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public setTimestampOffsetMicros(J)V
    .locals 1
    .param p1, "offsetMicros"    # J

    .line 226
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0, p1, p2}, Lcom/android/commands/uinput/Event;->-$$Nest$fputmTimestampOffsetMicros(Lcom/android/commands/uinput/Event;J)V

    .line 227
    return-void
.end method

.method public setVendorId(I)V
    .locals 1
    .param p1, "vendorId"    # I

    .line 240
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0, p1}, Lcom/android/commands/uinput/Event;->-$$Nest$fputmVendorId(Lcom/android/commands/uinput/Event;I)V

    .line 241
    return-void
.end method

.method public setVersionId(I)V
    .locals 1
    .param p1, "versionId"    # I

    .line 248
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Builder;->mEvent:Lcom/android/commands/uinput/Event;

    invoke-static {v0, p1}, Lcom/android/commands/uinput/Event;->-$$Nest$fputmVersionId(Lcom/android/commands/uinput/Event;I)V

    .line 249
    return-void
.end method
