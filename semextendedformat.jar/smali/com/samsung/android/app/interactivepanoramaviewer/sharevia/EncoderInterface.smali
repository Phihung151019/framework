.class public Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;
.super Ljava/lang/Object;
.source "EncoderInterface.java"


# static fields
.field private static final MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final TAG:Ljava/lang/String; = "EncoderInterface"

.field private static final VERBOSE:Z = true


# instance fields
.field EncBitRate:I

.field FRAME_RATE:I

.field IFRAME_INTERVAL:I

.field TIMEOUT_USEC:I

.field frameEncoded:I

.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mEncoder:Landroid/media/MediaCodec;

.field private mMuxer:Landroid/media/MediaMuxer;

.field private mMuxerStarted:Z

.field private mOrientation:I

.field private mTrackIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->TIMEOUT_USEC:I

    .line 20
    const v0, 0x5b8d80

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->EncBitRate:I

    .line 22
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->IFRAME_INTERVAL:I

    .line 13
    return-void
.end method

.method private drainEncoder(Z[B)V
    .locals 20
    .param p1, "endOfStream"    # Z
    .param p2, "buffer"    # [B

    .line 152
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "drainEncoder("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EncoderInterface"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    move/from16 v3, p1

    .line 155
    .local v3, "bufferEncoded":Z
    iget-object v5, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 156
    .local v5, "encoderInputBuffers":[Ljava/nio/ByteBuffer;
    iget-object v6, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 159
    .local v6, "encoderOutputBuffers":[Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    const/4 v7, -0x1

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v1, :cond_1

    .line 161
    iget-object v12, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v12, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v14

    .line 162
    .local v14, "index":I
    if-ltz v14, :cond_3

    .line 164
    iget-object v13, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    const-wide/16 v17, 0x0

    const/16 v19, 0x4

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v19}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 165
    const-string v8, "sending EOS to encoder"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v14    # "index":I
    goto :goto_1

    .line 170
    :cond_1
    if-nez v3, :cond_3

    .line 171
    iget-object v12, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v12, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v14

    .line 172
    .restart local v14    # "index":I
    if-ltz v14, :cond_2

    .line 173
    aget-object v8, v5, v14

    .line 174
    .local v8, "encoderBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 176
    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 178
    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 180
    iget v9, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->frameEncoded:I

    add-int/lit8 v12, v9, 0x1

    iput v12, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->frameEncoded:I

    invoke-virtual {v0, v9}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->getPresentationTimeUs(I)J

    move-result-wide v12

    .line 182
    .local v12, "ts":J
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v15, "ts of frame "

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v15, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->frameEncoded:I

    sub-int/2addr v15, v10

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, " is "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    move-wide/from16 v17, v12

    .end local v12    # "ts":J
    .local v17, "ts":J
    iget-object v13, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    array-length v9, v2

    const/16 v19, 0x0

    const/4 v15, 0x0

    move/from16 v16, v9

    invoke-virtual/range {v13 .. v19}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 185
    const/4 v3, 0x1

    .line 186
    .end local v8    # "encoderBuffer":Ljava/nio/ByteBuffer;
    .end local v17    # "ts":J
    goto :goto_1

    .line 187
    :cond_2
    const/4 v3, 0x0

    .line 188
    if-ne v14, v7, :cond_3

    .line 191
    const-string v8, "no input available, spinning to encode buffer"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .end local v14    # "index":I
    :cond_3
    :goto_1
    iget-object v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    iget-object v9, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->TIMEOUT_USEC:I

    int-to-long v12, v12

    invoke-virtual {v8, v9, v12, v13}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v8

    .line 198
    .local v8, "encoderStatus":I
    if-ne v8, v7, :cond_5

    .line 201
    if-nez v1, :cond_4

    if-eqz v3, :cond_4

    .line 203
    goto/16 :goto_3

    .line 206
    :cond_4
    const-string v7, "no output available, spinning to await EOS"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    goto/16 :goto_0

    :cond_5
    const/4 v7, -0x3

    if-ne v8, v7, :cond_6

    .line 211
    iget-object v7, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 212
    goto/16 :goto_0

    :cond_6
    const/4 v7, -0x2

    if-ne v8, v7, :cond_8

    .line 215
    iget-boolean v7, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxerStarted:Z

    if-nez v7, :cond_7

    .line 218
    iget-object v7, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v7

    .line 219
    .local v7, "newFormat":Landroid/media/MediaFormat;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "encoder output format changed: "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v9, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v9, v7}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v9

    iput v9, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mTrackIndex:I

    .line 224
    iget-object v9, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v9}, Landroid/media/MediaMuxer;->start()V

    .line 225
    iput-boolean v10, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxerStarted:Z

    .line 226
    .end local v7    # "newFormat":Landroid/media/MediaFormat;
    goto/16 :goto_0

    .line 216
    :cond_7
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v7, "format changed twice"

    invoke-direct {v4, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 226
    :cond_8
    if-gez v8, :cond_9

    .line 228
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 228
    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    goto/16 :goto_0

    .line 233
    :cond_9
    aget-object v7, v6, v8

    .line 234
    .local v7, "encodedData":Ljava/nio/ByteBuffer;
    if-eqz v7, :cond_e

    .line 239
    iget-object v9, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_a

    .line 242
    const-string v9, "ignoring BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v9, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v11, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 246
    :cond_a
    iget-object v9, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v9, :cond_c

    .line 248
    iget-boolean v9, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxerStarted:Z

    if-eqz v9, :cond_b

    .line 253
    iget-object v9, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 254
    iget-object v9, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v10, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v10, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v9, v10

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 256
    iget-object v9, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxer:Landroid/media/MediaMuxer;

    iget v10, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mTrackIndex:I

    iget-object v12, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v9, v10, v7, v12}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 257
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "sent "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v10, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes to muxer"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 249
    :cond_b
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v9, "muxer hasn\'t started"

    invoke-direct {v4, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 260
    :cond_c
    :goto_2
    iget-object v9, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v9, v8, v11}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 262
    iget-object v9, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_0

    .line 263
    if-nez v1, :cond_d

    .line 264
    const-string v9, "reached end of stream unexpectedly"

    invoke-static {v4, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    goto :goto_3

    .line 266
    :cond_d
    const-string v9, "end of stream reached"

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .end local v7    # "encodedData":Ljava/nio/ByteBuffer;
    .end local v8    # "encoderStatus":I
    :goto_3
    return-void

    .line 235
    .restart local v7    # "encodedData":Ljava/nio/ByteBuffer;
    .restart local v8    # "encoderStatus":I
    :cond_e
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "encoderOutputBuffer "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 236
    const-string v10, " was null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 235
    invoke-direct {v4, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private prepareEncoder(IIIIIILjava/lang/String;)I
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "bitRate"    # I
    .param p4, "frameRate"    # I
    .param p5, "IframeInterval"    # I
    .param p6, "colorFormat"    # I
    .param p7, "encodedFilePath"    # Ljava/lang/String;

    .line 74
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 76
    const-string v0, "video/avc"

    invoke-static {v0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    .line 80
    .local v1, "format":Landroid/media/MediaFormat;
    const-string v2, "color-format"

    const/16 v3, 0x15

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 82
    const-string v2, "bitrate"

    invoke-virtual {v1, v2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 83
    const-string v2, "frame-rate"

    invoke-virtual {v1, v2, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 84
    const-string v2, "i-frame-interval"

    invoke-virtual {v1, v2, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "format: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EncoderInterface"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :try_start_0
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v4, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_0

    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 99
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 101
    const-string v0, "mEncoder is null returning"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return v2

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Output file is "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :try_start_1
    new-instance v0, Landroid/media/MediaMuxer;

    const/4 v4, 0x0

    invoke-direct {v0, p7, v4}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    nop

    .line 118
    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mTrackIndex:I

    .line 119
    iput-boolean v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxerStarted:Z

    .line 121
    return v4

    .line 113
    :catch_1
    move-exception v0

    .line 114
    .local v0, "ioe":Ljava/io/IOException;
    const-string v4, "MediaMuxer creation failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return v2
.end method

.method private releaseEncoder()V
    .locals 2

    .line 128
    const-string v0, "EncoderInterface"

    const-string v1, "releasing encoder objects"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 132
    iput-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 138
    iput-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxer:Landroid/media/MediaMuxer;

    .line 140
    :cond_1
    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .line 60
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->drainEncoder(Z[B)V

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->releaseEncoder()V

    .line 62
    return-void
.end method

.method public encode([B)V
    .locals 1
    .param p1, "inputFrame"    # [B

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->drainEncoder(Z[B)V

    .line 67
    return-void
.end method

.method getPresentationTimeUs(I)J
    .locals 4
    .param p1, "frameNumber"    # I

    .line 281
    int-to-long v0, p1

    const v2, 0xf4240

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->FRAME_RATE:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public init(IIIIIILjava/lang/String;I)I
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "bitRate"    # I
    .param p4, "frameRate"    # I
    .param p5, "IFrame_Interval"    # I
    .param p6, "colorFormat"    # I
    .param p7, "encodedFilePath"    # Ljava/lang/String;
    .param p8, "orientation"    # I

    .line 37
    const/4 v0, -0x1

    const-string v1, "EncoderInterface"

    if-eqz p7, :cond_2

    invoke-virtual {p7}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    const/16 v2, 0x15

    if-eq p6, v2, :cond_1

    .line 45
    const-string v2, "color format not supported as of now"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return v0

    .line 49
    :cond_1
    iput p4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->FRAME_RATE:I

    .line 50
    iput p3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->EncBitRate:I

    .line 51
    iput p8, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mOrientation:I

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "video/avc output "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " @"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->prepareEncoder(IIIIIILjava/lang/String;)I

    move-result v0

    return v0

    .line 39
    :cond_2
    :goto_0
    const-string v2, "wrong arguments to init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return v0
.end method

.method public setTimeOutUs(I)V
    .locals 0
    .param p1, "value"    # I

    .line 276
    iput p1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->TIMEOUT_USEC:I

    .line 277
    return-void
.end method
