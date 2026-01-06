.class public Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;
.super Ljava/lang/Object;
.source "PostProcessClassifier.java"


# static fields
.field private static final MODEL_FILE:Ljava/lang/String; = "/system/etc/pp_model.tflite"

.field private static final TAG:Ljava/lang/String; = "PostProcessClassifier"

.field private static mInterpreter:Lorg/tensorflow/lite/Interpreter;


# instance fields
.field private cStateBB:Ljava/nio/ByteBuffer;

.field private hStateBB:Ljava/nio/ByteBuffer;

.field private final hiddenSize:I

.field private inputBB:Ljava/nio/ByteBuffer;

.field private final numFeature:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->mInterpreter:Lorg/tensorflow/lite/Interpreter;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .param p1, "numFeature"    # I

    .line 45
    const-string v0, "/system/etc/pp_model.tflite"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v1, Lorg/tensorflow/lite/Interpreter$Options;

    invoke-direct {v1}, Lorg/tensorflow/lite/Interpreter$Options;-><init>()V

    .line 47
    .local v1, "options":Lorg/tensorflow/lite/Interpreter$Options;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/tensorflow/lite/Interpreter$Options;->setNumThreads(I)Lorg/tensorflow/lite/Interpreter$Options;

    .line 49
    sget-object v2, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->mInterpreter:Lorg/tensorflow/lite/Interpreter;

    const-string v3, "PostProcessClassifier"

    if-nez v2, :cond_0

    .line 50
    const-string v2, ""

    .line 52
    .local v2, "checksum":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/tensorflow/lite/Interpreter;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->loadModelFile(Ljava/lang/String;)Ljava/nio/MappedByteBuffer;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/tensorflow/lite/Interpreter;-><init>(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/Interpreter$Options;)V

    sput-object v4, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->mInterpreter:Lorg/tensorflow/lite/Interpreter;

    .line 54
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 55
    .local v4, "md":Ljava/security/MessageDigest;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v0, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 56
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 57
    .local v0, "digest":[B
    invoke-static {v0}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 62
    .end local v0    # "digest":[B
    .end local v4    # "md":Ljava/security/MessageDigest;
    :goto_0
    goto :goto_1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    .line 58
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 59
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 63
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[21.6.25] Model Loaded! RNN Model checksum : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .end local v2    # "checksum":Ljava/lang/String;
    goto :goto_2

    .line 65
    :cond_0
    const-string v0, "[21.6.25] Model Already Loaded! ----- Skip"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_2
    iput p1, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->numFeature:I

    .line 69
    const/16 v0, 0x80

    iput v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->hiddenSize:I

    .line 72
    iget v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->numFeature:I

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->inputBB:Ljava/nio/ByteBuffer;

    .line 76
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->inputBB:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 78
    iget v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->hiddenSize:I

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->hStateBB:Ljava/nio/ByteBuffer;

    .line 79
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->hStateBB:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 81
    iget v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->hiddenSize:I

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->cStateBB:Ljava/nio/ByteBuffer;

    .line 82
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->cStateBB:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->resetMemoryState()V

    .line 89
    return-void
.end method

.method public static close()V
    .locals 2

    .line 92
    sget-object v0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->mInterpreter:Lorg/tensorflow/lite/Interpreter;

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "PostProcessClassifier"

    const-string v1, "LSTM close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->mInterpreter:Lorg/tensorflow/lite/Interpreter;

    invoke-virtual {v0}, Lorg/tensorflow/lite/Interpreter;->close()V

    .line 95
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->mInterpreter:Lorg/tensorflow/lite/Interpreter;

    .line 97
    :cond_0
    return-void
.end method

.method private loadModelFile(Ljava/lang/String;)Ljava/nio/MappedByteBuffer;
    .locals 7
    .param p1, "modelFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, "inputStream":Ljava/io/FileInputStream;
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 108
    .local v1, "fileChannel":Ljava/nio/channels/FileChannel;
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v3, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    return-object v2
.end method

.method private prepByteInput([F)V
    .locals 4
    .param p1, "inputArr"    # [F

    .line 208
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->inputBB:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 210
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 211
    .local v2, "item":F
    iget-object v3, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->inputBB:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 210
    .end local v2    # "item":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    :cond_0
    return-void
.end method


# virtual methods
.method public genRandFloatArr(I)[F
    .locals 4
    .param p1, "numElem"    # I

    .line 158
    new-array v0, p1, [F

    .line 159
    .local v0, "arr":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 160
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v0, v1

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public getNumFeature()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->numFeature:I

    return v0
.end method

.method public predict([F)[[F
    .locals 9
    .param p1, "inp"    # [F

    .line 118
    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->prepByteInput([F)V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->inputBB:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 121
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->hStateBB:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 123
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->inputBB:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->hStateBB:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->cStateBB:Ljava/nio/ByteBuffer;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 125
    .local v0, "inputArray":[Ljava/lang/Object;
    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    filled-new-array {v2}, [[F

    move-result-object v2

    filled-new-array {v2}, [[[F

    move-result-object v2

    .line 126
    .local v2, "output":[[[F
    iget v4, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->hiddenSize:I

    const/4 v5, 0x2

    new-array v6, v5, [I

    aput v4, v6, v1

    aput v1, v6, v3

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    .line 127
    .local v4, "hStateOut":[[F
    iget v6, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->hiddenSize:I

    new-array v7, v5, [I

    aput v6, v7, v1

    aput v1, v7, v3

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[F

    .line 129
    .local v6, "cStateOut":[[F
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 130
    .local v7, "outputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v1, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->mInterpreter:Lorg/tensorflow/lite/Interpreter;

    invoke-virtual {v1, v0, v7}, Lorg/tensorflow/lite/Interpreter;->runForMultipleInputsOutputs([Ljava/lang/Object;Ljava/util/Map;)V

    .line 136
    aget-object v1, v4, v3

    aget-object v5, v6, v3

    invoke-virtual {p0, v1, v5}, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->setHiddenState([F[F)V

    .line 141
    aget-object v1, v2, v3

    return-object v1
.end method

.method public resetMemoryState()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->hStateBB:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 170
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->cStateBB:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 172
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->hiddenSize:I

    if-ge v0, v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->hStateBB:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 174
    iget-object v1, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->cStateBB:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public resetSTMState()V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->hStateBB:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 184
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->hiddenSize:I

    if-ge v0, v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->hStateBB:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setHiddenState([F[F)V
    .locals 3
    .param p1, "hiddenState"    # [F
    .param p2, "cellState"    # [F

    .line 193
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->hStateBB:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 194
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->cStateBB:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 196
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->hiddenSize:I

    if-ge v0, v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->hStateBB:Ljava/nio/ByteBuffer;

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 198
    iget-object v1, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->cStateBB:Ljava/nio/ByteBuffer;

    aget v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
