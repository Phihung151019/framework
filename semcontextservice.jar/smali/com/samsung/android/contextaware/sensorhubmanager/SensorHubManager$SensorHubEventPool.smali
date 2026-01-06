.class Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;
.super Ljava/lang/Object;
.source "SensorHubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SensorHubEventPool"
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x80

.field private static final MAX_BUFFERS:I = 0x5

.field private static final MAX_BUFFER_SIZE:I = 0x400

.field private static final MAX_EVENTS:I = 0x5

.field private static final MAX_LARGE_BUFFERS:I = 0x1

.field private static final MAX_LARGE_EVENTS:I = 0x1


# instance fields
.field private final mBuffers:[Ljava/nio/ByteBuffer;

.field private final mEvents:[Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

.field private final mLargeBuffers:[Ljava/nio/ByteBuffer;

.field private final mLargeEvents:[Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

.field private mNumBuffers:I

.field private mNumEvents:I

.field private mNumLargeBuffers:I

.field private mNumLargeEvents:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumEvents:I

    .line 220
    iput v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumBuffers:I

    .line 221
    iput v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeEvents:I

    .line 222
    iput v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeBuffers:I

    .line 223
    const/4 v0, 0x5

    new-array v1, v0, [Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

    iput-object v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mEvents:[Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

    .line 224
    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mBuffers:[Ljava/nio/ByteBuffer;

    .line 226
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

    iput-object v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mLargeEvents:[Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

    .line 229
    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mLargeBuffers:[Ljava/nio/ByteBuffer;

    .line 231
    return-void
.end method

.method private createSensorHubEvent(I)Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;
    .locals 2
    .param p1, "size"    # I

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " create new SensorEvent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SensorHubManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

    invoke-direct {v0, p1}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method getBuffer(I)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "capacity"    # I

    .line 233
    const/4 v0, 0x0

    if-gtz p1, :cond_0

    .line 234
    const-string v1, "SensorHubManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrong buffer size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-object v0

    .line 237
    :cond_0
    rem-int/lit8 v1, p1, 0x4

    if-lez v1, :cond_1

    .line 238
    add-int/lit8 v1, p1, 0x4

    rem-int/lit8 v2, p1, 0x4

    sub-int p1, v1, v2

    .line 240
    :cond_1
    const/4 v1, 0x0

    .line 241
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    monitor-enter p0

    .line 242
    const/16 v2, 0x80

    if-gt p1, v2, :cond_3

    .line 243
    :try_start_0
    iget v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumBuffers:I

    if-lez v3, :cond_2

    .line 244
    iget-object v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mBuffers:[Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumBuffers:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    move-object v1, v3

    .line 245
    iget-object v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mBuffers:[Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumBuffers:I

    add-int/lit8 v4, v4, -0x1

    aput-object v0, v3, v4

    .line 246
    iget v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumBuffers:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumBuffers:I

    .line 249
    :cond_2
    if-nez v1, :cond_5

    .line 250
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v1, v0

    .line 251
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 252
    const-string v0, "SensorHubManager"

    const-string v2, " create new buffer 128"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 273
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 254
    :cond_3
    const/16 v2, 0x400

    if-gt p1, v2, :cond_5

    .line 255
    iget v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeBuffers:I

    if-lez v3, :cond_4

    .line 256
    iget-object v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mLargeBuffers:[Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeBuffers:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    move-object v1, v3

    .line 257
    iget-object v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mLargeBuffers:[Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeBuffers:I

    add-int/lit8 v4, v4, -0x1

    aput-object v0, v3, v4

    .line 258
    iget v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeBuffers:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeBuffers:I

    .line 261
    :cond_4
    if-nez v1, :cond_5

    .line 262
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v1, v0

    .line 263
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 264
    const-string v0, "SensorHubManager"

    const-string v2, " create new buffer 1024"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_5
    :goto_0
    if-nez v1, :cond_6

    .line 268
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v1, v0

    .line 269
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 270
    const-string v0, "SensorHubManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " create new buffer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_6
    monitor-exit p0

    .line 274
    return-object v1

    .line 273
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getEvent(I)Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;
    .locals 5
    .param p1, "size"    # I

    .line 292
    const/4 v0, 0x0

    if-gez p1, :cond_0

    .line 293
    const-string v1, "SensorHubManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " wrong event size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-object v0

    .line 296
    :cond_0
    const/4 v1, 0x0

    .line 297
    .local v1, "t":Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;
    monitor-enter p0

    .line 298
    const/16 v2, 0x80

    if-ge p1, v2, :cond_2

    .line 299
    :try_start_0
    iget v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumEvents:I

    if-lez v3, :cond_1

    .line 300
    iget-object v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mEvents:[Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

    iget v4, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumEvents:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    move-object v1, v3

    .line 301
    iget-object v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mEvents:[Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

    iget v4, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumEvents:I

    add-int/lit8 v4, v4, -0x1

    aput-object v0, v3, v4

    .line 302
    iget v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumEvents:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumEvents:I

    .line 304
    :cond_1
    if-nez v1, :cond_4

    .line 305
    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->createSensorHubEvent(I)Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 321
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 307
    :cond_2
    const/16 v2, 0x400

    if-ge p1, v2, :cond_4

    .line 308
    iget v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeEvents:I

    if-lez v3, :cond_3

    .line 309
    iget-object v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mLargeEvents:[Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

    iget v4, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeEvents:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    move-object v1, v3

    .line 310
    iget-object v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mLargeEvents:[Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

    iget v4, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeEvents:I

    add-int/lit8 v4, v4, -0x1

    aput-object v0, v3, v4

    .line 311
    iget v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeEvents:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeEvents:I

    .line 313
    :cond_3
    if-nez v1, :cond_4

    .line 314
    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->createSensorHubEvent(I)Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

    move-result-object v0

    move-object v1, v0

    .line 318
    :cond_4
    :goto_0
    if-nez v1, :cond_5

    .line 319
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->createSensorHubEvent(I)Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

    move-result-object v0

    move-object v1, v0

    .line 321
    :cond_5
    monitor-exit p0

    .line 322
    return-object v1

    .line 321
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method returnBuffer(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 277
    monitor-enter p0

    .line 278
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const/16 v1, 0x80

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 279
    iget v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumBuffers:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 280
    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mBuffers:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumBuffers:I

    aput-object p1, v0, v1

    .line 281
    iget v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumBuffers:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumBuffers:I

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const/16 v1, 0x400

    if-ne v0, v1, :cond_1

    .line 284
    iget v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeBuffers:I

    if-ge v0, v2, :cond_1

    .line 285
    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mLargeBuffers:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeBuffers:I

    aput-object p1, v0, v1

    .line 286
    iget v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeBuffers:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeBuffers:I

    .line 289
    :cond_1
    :goto_0
    monitor-exit p0

    .line 290
    return-void

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method returnEvent(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;)V
    .locals 4
    .param p1, "t"    # Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

    .line 326
    monitor-enter p0

    .line 327
    :try_start_0
    iget-object v0, p1, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;->buffer:[B

    array-length v0, v0

    .line 328
    .local v0, "length":I
    const/16 v1, 0x80

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 329
    iget v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumEvents:I

    const/4 v3, 0x5

    if-ge v1, v3, :cond_1

    .line 330
    iget-object v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mEvents:[Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

    iget v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumEvents:I

    aput-object p1, v1, v3

    .line 331
    iget v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumEvents:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumEvents:I

    goto :goto_0

    .line 333
    :cond_0
    const/16 v1, 0x400

    if-ne v0, v1, :cond_1

    .line 334
    iget v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeEvents:I

    if-ge v1, v2, :cond_1

    .line 335
    iget-object v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mLargeEvents:[Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

    iget v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeEvents:I

    aput-object p1, v1, v3

    .line 336
    iget v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeEvents:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->mNumLargeEvents:I

    .line 339
    .end local v0    # "length":I
    :cond_1
    :goto_0
    monitor-exit p0

    .line 340
    return-void

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
