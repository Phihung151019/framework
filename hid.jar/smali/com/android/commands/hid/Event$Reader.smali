.class public Lcom/android/commands/hid/Event$Reader;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/hid/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reader"
.end annotation


# instance fields
.field private mReader:Landroid/util/JsonReader;


# direct methods
.method public constructor <init>(Ljava/io/InputStreamReader;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStreamReader;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    new-instance v0, Landroid/util/JsonReader;

    invoke-direct {v0, p1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    .line 236
    iget-object v0, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/JsonReader;->setLenient(Z)V

    .line 237
    return-void
.end method

.method private consumeRemainingElements()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    nop

    :goto_0
    iget-object v0, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 431
    :cond_0
    return-void
.end method

.method private readBool()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private readBus()Lcom/android/commands/hid/Event$Bus;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "val":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/commands/hid/Event$Bus;->valueOf(Ljava/lang/String;)Lcom/android/commands/hid/Event$Bus;

    move-result-object v1

    return-object v1
.end method

.method private readData()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V

    .line 308
    :goto_0
    iget-object v1, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    nop

    .line 317
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [B

    .line 318
    .local v1, "rawData":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 319
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 320
    .local v3, "d":I
    and-int/lit16 v4, v3, 0xff

    if-ne v4, v3, :cond_1

    .line 323
    int-to-byte v4, v3

    aput-byte v4, v1, v2

    .line 318
    .end local v3    # "d":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 321
    .restart local v3    # "d":I
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Invalid data, all values must be byte-sized"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 325
    .end local v2    # "i":I
    .end local v3    # "d":I
    :cond_2
    return-object v1

    .line 312
    .end local v1    # "rawData":[B
    :catch_0
    move-exception v1

    .line 313
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->consumeRemainingElements()V

    .line 314
    iget-object v2, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v2}, Landroid/util/JsonReader;->endArray()V

    .line 315
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Encountered malformed data."

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private readFeatureReports()Landroid/util/SparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 347
    .local v0, "featureReports":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V

    .line 348
    :goto_0
    iget-object v1, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 351
    const/4 v1, 0x0

    .line 352
    .local v1, "id":I
    const/4 v2, 0x0

    .line 353
    .local v2, "data":[B
    iget-object v3, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->beginObject()V

    .line 354
    :goto_1
    iget-object v3, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 355
    iget-object v3, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 356
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    goto :goto_2

    :sswitch_0
    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_3

    :sswitch_1
    const-string v4, "id"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_3

    :goto_2
    const/4 v4, -0x1

    :goto_3
    packed-switch v4, :pswitch_data_0

    .line 364
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->consumeRemainingElements()V

    goto :goto_5

    .line 361
    :pswitch_0
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->readData()[B

    move-result-object v4

    .line 362
    .end local v2    # "data":[B
    .local v4, "data":[B
    move-object v2, v4

    goto :goto_4

    .line 358
    .end local v4    # "data":[B
    .restart local v2    # "data":[B
    :pswitch_1
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->readInt()I

    move-result v4

    .line 359
    .end local v1    # "id":I
    .local v4, "id":I
    move v1, v4

    .line 369
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "id":I
    .restart local v1    # "id":I
    :goto_4
    goto :goto_1

    .line 365
    .restart local v3    # "name":Ljava/lang/String;
    :goto_5
    iget-object v4, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v4}, Landroid/util/JsonReader;->endObject()V

    .line 366
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid key in feature report: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "featureReports":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .end local p0    # "this":Lcom/android/commands/hid/Event$Reader;
    throw v4

    .line 370
    .end local v3    # "name":Ljava/lang/String;
    .restart local v0    # "featureReports":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .restart local p0    # "this":Lcom/android/commands/hid/Event$Reader;
    :cond_1
    iget-object v3, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->endObject()V

    .line 371
    if-eqz v2, :cond_2

    .line 372
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 374
    .end local v1    # "id":I
    .end local v2    # "data":[B
    :cond_2
    goto :goto_0

    .line 375
    :cond_3
    iget-object v1, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    nop

    .line 381
    return-object v0

    .line 376
    :catch_0
    move-exception v1

    .line 377
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->consumeRemainingElements()V

    .line 378
    iget-object v2, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v2}, Landroid/util/JsonReader;->endArray()V

    .line 379
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Encountered malformed data."

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :sswitch_data_0
    .sparse-switch
        0xd1b -> :sswitch_1
        0x2eefaa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readInt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private readOutputs()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/nio/ByteBuffer;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 389
    .local v0, "outputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/nio/ByteBuffer;[B>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V

    .line 390
    :goto_0
    iget-object v1, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 391
    const/4 v1, 0x0

    .line 392
    .local v1, "output":[B
    const/4 v2, 0x0

    .line 393
    .local v2, "response":[B
    iget-object v3, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->beginObject()V

    .line 394
    :goto_1
    iget-object v3, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 395
    iget-object v3, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 396
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    goto :goto_2

    :sswitch_0
    const-string v4, "response"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto :goto_3

    :sswitch_1
    const-string v4, "output"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_3

    :sswitch_2
    const-string v4, "description"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_3

    :goto_2
    const/4 v4, -0x1

    :goto_3
    packed-switch v4, :pswitch_data_0

    .line 408
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->consumeRemainingElements()V

    goto :goto_5

    .line 405
    :pswitch_0
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->readData()[B

    move-result-object v4

    .line 406
    .end local v2    # "response":[B
    .local v4, "response":[B
    move-object v2, v4

    goto :goto_4

    .line 402
    .end local v4    # "response":[B
    .restart local v2    # "response":[B
    :pswitch_1
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->readData()[B

    move-result-object v4

    .line 403
    .end local v1    # "output":[B
    .local v4, "output":[B
    move-object v1, v4

    goto :goto_4

    .line 399
    .end local v4    # "output":[B
    .restart local v1    # "output":[B
    :pswitch_2
    iget-object v4, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v4}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 400
    nop

    .line 412
    .end local v3    # "name":Ljava/lang/String;
    :goto_4
    goto :goto_1

    .line 409
    .restart local v3    # "name":Ljava/lang/String;
    :goto_5
    iget-object v4, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v4}, Landroid/util/JsonReader;->endObject()V

    .line 410
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid key in outputs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "outputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/nio/ByteBuffer;[B>;"
    .end local p0    # "this":Lcom/android/commands/hid/Event$Reader;
    throw v4

    .line 413
    .end local v3    # "name":Ljava/lang/String;
    .restart local v0    # "outputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/nio/ByteBuffer;[B>;"
    .restart local p0    # "this":Lcom/android/commands/hid/Event$Reader;
    :cond_1
    iget-object v3, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->endObject()V

    .line 414
    if-eqz v1, :cond_2

    .line 415
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    .end local v1    # "output":[B
    .end local v2    # "response":[B
    :cond_2
    goto/16 :goto_0

    .line 418
    :cond_3
    iget-object v1, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    nop

    .line 424
    return-object v0

    .line 419
    :catch_0
    move-exception v1

    .line 420
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->consumeRemainingElements()V

    .line 421
    iget-object v2, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v2}, Landroid/util/JsonReader;->endArray()V

    .line 422
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Encountered malformed data."

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :sswitch_data_0
    .sparse-switch
        -0x66ca7c04 -> :sswitch_2
        -0x3beee6ff -> :sswitch_1
        -0x1448ebbf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getNextEvent()Lcom/android/commands/hid/Event;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "e":Lcom/android/commands/hid/Event;
    :goto_0
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->END_DOCUMENT:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_2

    .line 242
    new-instance v1, Lcom/android/commands/hid/Event$Builder;

    invoke-direct {v1}, Lcom/android/commands/hid/Event$Builder;-><init>()V

    .line 244
    .local v1, "eb":Lcom/android/commands/hid/Event$Builder;
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v2}, Landroid/util/JsonReader;->beginObject()V

    .line 245
    :goto_1
    iget-object v2, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v2}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    iget-object v2, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v2}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto/16 :goto_2

    :sswitch_0
    const-string v3, "command"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto/16 :goto_3

    :sswitch_1
    const-string v3, "uniq"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto/16 :goto_3

    :sswitch_2
    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto/16 :goto_3

    :sswitch_3
    const-string v3, "vid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_3

    :sswitch_4
    const-string v3, "pid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto :goto_3

    :sswitch_5
    const-string v3, "bus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto :goto_3

    :sswitch_6
    const-string v3, "id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_3

    :sswitch_7
    const-string v3, "feature_reports"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    goto :goto_3

    :sswitch_8
    const-string v3, "descriptor"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_3

    :sswitch_9
    const-string v3, "report"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto :goto_3

    :sswitch_a
    const-string v3, "outputs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    goto :goto_3

    :sswitch_b
    const-string v3, "success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xc

    goto :goto_3

    :sswitch_c
    const-string v3, "duration"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xb

    goto :goto_3

    :goto_2
    const/4 v3, -0x1

    :goto_3
    packed-switch v3, :pswitch_data_0

    .line 288
    iget-object v3, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    goto/16 :goto_4

    .line 285
    :pswitch_0
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->readBool()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/commands/hid/Event$Builder;->setReply(Z)V

    .line 286
    goto/16 :goto_5

    .line 282
    :pswitch_1
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->readInt()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/commands/hid/Event$Builder;->setDuration(I)V

    .line 283
    goto :goto_5

    .line 279
    :pswitch_2
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->readOutputs()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/commands/hid/Event$Builder;->setOutputs(Ljava/util/Map;)V

    .line 280
    goto :goto_5

    .line 276
    :pswitch_3
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->readFeatureReports()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/commands/hid/Event$Builder;->setFeatureReports(Landroid/util/SparseArray;)V

    .line 277
    goto :goto_5

    .line 273
    :pswitch_4
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->readData()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/commands/hid/Event$Builder;->setReport([B)V

    .line 274
    goto :goto_5

    .line 270
    :pswitch_5
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->readBus()Lcom/android/commands/hid/Event$Bus;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/commands/hid/Event$Builder;->setBus(Lcom/android/commands/hid/Event$Bus;)V

    .line 271
    goto :goto_5

    .line 267
    :pswitch_6
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->readInt()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/commands/hid/Event$Builder;->setPid(I)V

    .line 268
    goto :goto_5

    .line 264
    :pswitch_7
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->readInt()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/commands/hid/Event$Builder;->setVid(I)V

    .line 265
    goto :goto_5

    .line 261
    :pswitch_8
    iget-object v3, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/commands/hid/Event$Builder;->setUniq(Ljava/lang/String;)V

    .line 262
    goto :goto_5

    .line 258
    :pswitch_9
    iget-object v3, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/commands/hid/Event$Builder;->setName(Ljava/lang/String;)V

    .line 259
    goto :goto_5

    .line 255
    :pswitch_a
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->readData()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/commands/hid/Event$Builder;->setDescriptor([B)V

    .line 256
    goto :goto_5

    .line 252
    :pswitch_b
    iget-object v3, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/commands/hid/Event$Builder;->-$$Nest$msetCommand(Lcom/android/commands/hid/Event$Builder;Ljava/lang/String;)V

    .line 253
    goto :goto_5

    .line 249
    :pswitch_c
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->readInt()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/commands/hid/Event$Builder;->setId(I)V

    .line 250
    goto :goto_5

    .line 288
    :goto_4
    invoke-virtual {v3}, Landroid/util/JsonReader;->skipValue()V

    .line 290
    .end local v2    # "name":Ljava/lang/String;
    :goto_5
    goto/16 :goto_1

    .line 291
    :cond_1
    iget-object v2, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v2}, Landroid/util/JsonReader;->endObject()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    nop

    .line 298
    invoke-virtual {v1}, Lcom/android/commands/hid/Event$Builder;->build()Lcom/android/commands/hid/Event;

    move-result-object v0

    .line 299
    .end local v1    # "eb":Lcom/android/commands/hid/Event$Builder;
    goto/16 :goto_0

    .line 292
    .restart local v1    # "eb":Lcom/android/commands/hid/Event$Builder;
    :catch_0
    move-exception v2

    .line 293
    .local v2, "ex":Ljava/lang/IllegalStateException;
    const-string v3, "Error reading in object, ignoring."

    invoke-static {v3, v2}, Lcom/android/commands/hid/Event;->-$$Nest$smerror(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 294
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->consumeRemainingElements()V

    .line 295
    iget-object v3, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->endObject()V

    .line 296
    goto/16 :goto_0

    .line 301
    .end local v1    # "eb":Lcom/android/commands/hid/Event$Builder;
    .end local v2    # "ex":Ljava/lang/IllegalStateException;
    :cond_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76bbb26c -> :sswitch_c
        -0x6f4abffd -> :sswitch_b
        -0x41edf86e -> :sswitch_a
        -0x37b3aacc -> :sswitch_9
        -0x2c9b2c91 -> :sswitch_8
        -0x17e6e28a -> :sswitch_7
        0xd1b -> :sswitch_6
        0x17e80 -> :sswitch_5
        0x1b18b -> :sswitch_4
        0x1c811 -> :sswitch_3
        0x337a8b -> :sswitch_2
        0x36d981 -> :sswitch_1
        0x38a5df4b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
