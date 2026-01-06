.class public final Lorg/tensorflow/lite/Interpreter;
.super Ljava/lang/Object;
.source "Interpreter.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/Interpreter$Options;
    }
.end annotation


# instance fields
.field wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "modelFile"    # Ljava/io/File;

    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/tensorflow/lite/Interpreter;-><init>(Ljava/io/File;Lorg/tensorflow/lite/Interpreter$Options;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 1
    .param p1, "modelFile"    # Ljava/io/File;
    .param p2, "numThreads"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 165
    new-instance v0, Lorg/tensorflow/lite/Interpreter$Options;

    invoke-direct {v0}, Lorg/tensorflow/lite/Interpreter$Options;-><init>()V

    invoke-virtual {v0, p2}, Lorg/tensorflow/lite/Interpreter$Options;->setNumThreads(I)Lorg/tensorflow/lite/Interpreter$Options;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/tensorflow/lite/Interpreter;-><init>(Ljava/io/File;Lorg/tensorflow/lite/Interpreter$Options;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/tensorflow/lite/Interpreter$Options;)V
    .locals 2
    .param p1, "modelFile"    # Ljava/io/File;
    .param p2, "options"    # Lorg/tensorflow/lite/Interpreter$Options;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;-><init>(Ljava/lang/String;Lorg/tensorflow/lite/Interpreter$Options;)V

    iput-object v0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/tensorflow/lite/Interpreter;-><init>(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/Interpreter$Options;)V

    .line 192
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 1
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "numThreads"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    new-instance v0, Lorg/tensorflow/lite/Interpreter$Options;

    invoke-direct {v0}, Lorg/tensorflow/lite/Interpreter$Options;-><init>()V

    invoke-virtual {v0, p2}, Lorg/tensorflow/lite/Interpreter$Options;->setNumThreads(I)Lorg/tensorflow/lite/Interpreter$Options;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/tensorflow/lite/Interpreter;-><init>(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/Interpreter$Options;)V

    .line 208
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/Interpreter$Options;)V
    .locals 1
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "options"    # Lorg/tensorflow/lite/Interpreter$Options;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance v0, Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-direct {v0, p1, p2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;-><init>(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/Interpreter$Options;)V

    iput-object v0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    .line 237
    return-void
.end method

.method public constructor <init>(Ljava/nio/MappedByteBuffer;)V
    .locals 1
    .param p1, "mappedByteBuffer"    # Ljava/nio/MappedByteBuffer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/tensorflow/lite/Interpreter;-><init>(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/Interpreter$Options;)V

    .line 222
    return-void
.end method

.method private checkNotClosed()V
    .locals 2

    .line 464
    iget-object v0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    if-eqz v0, :cond_0

    .line 467
    return-void

    .line 465
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Internal error: The Interpreter has already been closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 448
    iget-object v0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {v0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->close()V

    .line 450
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    .line 452
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 457
    :try_start_0
    invoke-virtual {p0}, Lorg/tensorflow/lite/Interpreter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 460
    nop

    .line 461
    return-void

    .line 459
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 460
    throw v0
.end method

.method public getInputIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "opName"    # Ljava/lang/String;

    .line 340
    invoke-direct {p0}, Lorg/tensorflow/lite/Interpreter;->checkNotClosed()V

    .line 341
    iget-object v0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {v0, p1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getInputIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInputTensor(I)Lorg/tensorflow/lite/Tensor;
    .locals 1
    .param p1, "inputIndex"    # I

    .line 351
    invoke-direct {p0}, Lorg/tensorflow/lite/Interpreter;->checkNotClosed()V

    .line 352
    iget-object v0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {v0, p1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getInputTensor(I)Lorg/tensorflow/lite/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public getInputTensorCount()I
    .locals 1

    .line 329
    invoke-direct {p0}, Lorg/tensorflow/lite/Interpreter;->checkNotClosed()V

    .line 330
    iget-object v0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {v0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getInputTensorCount()I

    move-result v0

    return v0
.end method

.method public getLastNativeInferenceDurationNanoseconds()Ljava/lang/Long;
    .locals 1

    .line 389
    invoke-direct {p0}, Lorg/tensorflow/lite/Interpreter;->checkNotClosed()V

    .line 390
    iget-object v0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {v0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getLastNativeInferenceDurationNanoseconds()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getOutputIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "opName"    # Ljava/lang/String;

    .line 368
    invoke-direct {p0}, Lorg/tensorflow/lite/Interpreter;->checkNotClosed()V

    .line 369
    iget-object v0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {v0, p1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getOutputIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getOutputTensor(I)Lorg/tensorflow/lite/Tensor;
    .locals 1
    .param p1, "outputIndex"    # I

    .line 379
    invoke-direct {p0}, Lorg/tensorflow/lite/Interpreter;->checkNotClosed()V

    .line 380
    iget-object v0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {v0, p1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getOutputTensor(I)Lorg/tensorflow/lite/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public getOutputTensorCount()I
    .locals 1

    .line 357
    invoke-direct {p0}, Lorg/tensorflow/lite/Interpreter;->checkNotClosed()V

    .line 358
    iget-object v0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {v0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getOutputTensorCount()I

    move-result v0

    return v0
.end method

.method public modifyGraphWithDelegate(Lorg/tensorflow/lite/Delegate;)V
    .locals 1
    .param p1, "delegate"    # Lorg/tensorflow/lite/Delegate;

    .line 429
    invoke-direct {p0}, Lorg/tensorflow/lite/Interpreter;->checkNotClosed()V

    .line 430
    iget-object v0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {v0, p1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->modifyGraphWithDelegate(Lorg/tensorflow/lite/Delegate;)V

    .line 431
    return-void
.end method

.method public resetVariableTensors()V
    .locals 1

    .line 441
    invoke-direct {p0}, Lorg/tensorflow/lite/Interpreter;->checkNotClosed()V

    .line 442
    iget-object v0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {v0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->resetVariableTensors()V

    .line 443
    return-void
.end method

.method public resizeInput(I[I)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "dims"    # [I

    .line 323
    invoke-direct {p0}, Lorg/tensorflow/lite/Interpreter;->checkNotClosed()V

    .line 324
    iget-object v0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {v0, p1, p2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->resizeInput(I[I)V

    .line 325
    return-void
.end method

.method public run(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "input"    # Ljava/lang/Object;
    .param p2, "output"    # Ljava/lang/Object;

    .line 271
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    .line 272
    .local v0, "inputs":[Ljava/lang/Object;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 273
    .local v1, "outputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-virtual {p0, v0, v1}, Lorg/tensorflow/lite/Interpreter;->runForMultipleInputsOutputs([Ljava/lang/Object;Ljava/util/Map;)V

    .line 275
    return-void
.end method

.method public runForMultipleInputsOutputs([Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1
    .param p1, "inputs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 312
    .local p2, "outputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lorg/tensorflow/lite/Interpreter;->checkNotClosed()V

    .line 313
    iget-object v0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {v0, p1, p2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->run([Ljava/lang/Object;Ljava/util/Map;)V

    .line 314
    return-void
.end method

.method public setNumThreads(I)V
    .locals 1
    .param p1, "numThreads"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 413
    invoke-direct {p0}, Lorg/tensorflow/lite/Interpreter;->checkNotClosed()V

    .line 414
    iget-object v0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {v0, p1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->setNumThreads(I)V

    .line 415
    return-void
.end method

.method public setUseNNAPI(Z)V
    .locals 1
    .param p1, "useNNAPI"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 401
    invoke-direct {p0}, Lorg/tensorflow/lite/Interpreter;->checkNotClosed()V

    .line 402
    iget-object v0, p0, Lorg/tensorflow/lite/Interpreter;->wrapper:Lorg/tensorflow/lite/NativeInterpreterWrapper;

    invoke-virtual {v0, p1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->setUseNNAPI(Z)V

    .line 403
    return-void
.end method
