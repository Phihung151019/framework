.class public Lcom/android/commands/uinput/JsonStyleParser;
.super Ljava/lang/Object;
.source "JsonStyleParser.java"

# interfaces
.implements Lcom/android/commands/uinput/EventParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/uinput/JsonStyleParser$IntValueReader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UinputJsonStyleParser"


# instance fields
.field private mReader:Landroid/util/JsonReader;


# direct methods
.method public static synthetic $r8$lambda$2_Wr8z5f27etLv8w-xN9qGmaLXs(Lcom/android/commands/uinput/JsonStyleParser;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->lambda$readDataForControlCode$4()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$G4oxjwC2N0Cls3RvJCjmuwRmveQ(Lcom/android/commands/uinput/JsonStyleParser;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->lambda$readDataForControlCode$7()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GfsfTxfop_Ip2IhqgxSzl_1mYyc(Lcom/android/commands/uinput/JsonStyleParser;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->lambda$readDataForControlCode$2()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$JMpq_zwHbMF8WEmUMuNqMGoo7j8(Lcom/android/commands/uinput/JsonStyleParser;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->lambda$readDataForControlCode$6()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$JXLSfn6lkmzmarLG1ift2Um7P80(Lcom/android/commands/uinput/JsonStyleParser;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->lambda$readDataForControlCode$8()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$NboSkIHdmYoo53HpFyLRgVDumls(Lcom/android/commands/uinput/JsonStyleParser;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->readEvdevInputProp()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$SEwU6aD_sLDk9lKBthU3Dv7GgzA(Lcom/android/commands/uinput/JsonStyleParser;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->readEvdevEventType()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$T0_Sf5hm4XJfvTFL43Q-fJcVoZc(Lcom/android/commands/uinput/JsonStyleParser;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->lambda$readDataForControlCode$5()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$aJlHZr9tyd0Z8JzpbFUzA5wT8xE(Lcom/android/commands/uinput/JsonStyleParser;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->lambda$readDataForControlCode$3()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fwiR-xSM-8z5xMWkzx4F2T8j6a0(Lcom/android/commands/uinput/JsonStyleParser;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->lambda$readDataForControlCode$9()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .param p1, "in"    # Ljava/io/Reader;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/util/JsonReader;

    invoke-direct {v0, p1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    .line 45
    iget-object v0, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/JsonReader;->setLenient(Z)V

    .line 46
    return-void
.end method

.method private consumeRemainingElements()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    nop

    :goto_0
    iget-object v0, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 364
    :cond_0
    return-void
.end method

.method private static error(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 367
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 368
    const-string v0, "UinputJsonStyleParser"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    if-eqz p1, :cond_0

    .line 370
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    return-void
.end method

.method private synthetic lambda$readDataForControlCode$2()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/commands/uinput/JsonStyleParser;->readEvdevEventCode(I)I

    move-result v0

    return v0
.end method

.method private synthetic lambda$readDataForControlCode$3()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/commands/uinput/JsonStyleParser;->readEvdevEventCode(I)I

    move-result v0

    return v0
.end method

.method private synthetic lambda$readDataForControlCode$4()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/commands/uinput/JsonStyleParser;->readEvdevEventCode(I)I

    move-result v0

    return v0
.end method

.method private synthetic lambda$readDataForControlCode$5()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/commands/uinput/JsonStyleParser;->readEvdevEventCode(I)I

    move-result v0

    return v0
.end method

.method private synthetic lambda$readDataForControlCode$6()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/android/commands/uinput/JsonStyleParser;->readEvdevEventCode(I)I

    move-result v0

    return v0
.end method

.method private synthetic lambda$readDataForControlCode$7()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/android/commands/uinput/JsonStyleParser;->readEvdevEventCode(I)I

    move-result v0

    return v0
.end method

.method private synthetic lambda$readDataForControlCode$8()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/android/commands/uinput/JsonStyleParser;->readEvdevEventCode(I)I

    move-result v0

    return v0
.end method

.method private synthetic lambda$readDataForControlCode$9()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/commands/uinput/JsonStyleParser;->readEvdevEventCode(I)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$readEvdevEventCode$10(ILjava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "type"    # I
    .param p1, "str"    # Ljava/lang/String;

    .line 353
    invoke-static {p0, p1}, Lcom/android/commands/uinput/Device;->getEvdevEventCodeByLabel(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$readInt$0(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Encountered malformed data. Expected int."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$readUinputControlCode$1(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p0, "controlTypeStr"    # Ljava/lang/String;

    .line 233
    :try_start_0
    invoke-static {p0}, Lcom/android/commands/uinput/Event$UinputControlCode;->valueOf(Ljava/lang/String;)Lcom/android/commands/uinput/Event$UinputControlCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/commands/uinput/Event$UinputControlCode;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method private readAbsInfo()Lsrc/com/android/commands/uinput/InputAbsInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    new-instance v0, Lsrc/com/android/commands/uinput/InputAbsInfo;

    invoke-direct {v0}, Lsrc/com/android/commands/uinput/InputAbsInfo;-><init>()V

    .line 286
    .local v0, "absInfo":Lsrc/com/android/commands/uinput/InputAbsInfo;
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    .line 287
    :goto_0
    iget-object v1, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    iget-object v1, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v2, "minimum"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    :sswitch_1
    const-string v2, "maximum"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_2

    :sswitch_2
    const-string v2, "value"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_2

    :sswitch_3
    const-string v2, "fuzz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_2

    :sswitch_4
    const-string v2, "flat"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_2

    :sswitch_5
    const-string v2, "resolution"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_2

    :goto_1
    const/4 v2, -0x1

    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 297
    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->consumeRemainingElements()V

    goto :goto_4

    .line 295
    :pswitch_0
    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->readInt()I

    move-result v2

    iput v2, v0, Lsrc/com/android/commands/uinput/InputAbsInfo;->resolution:I

    goto :goto_3

    .line 294
    :pswitch_1
    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->readInt()I

    move-result v2

    iput v2, v0, Lsrc/com/android/commands/uinput/InputAbsInfo;->flat:I

    goto :goto_3

    .line 293
    :pswitch_2
    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->readInt()I

    move-result v2

    iput v2, v0, Lsrc/com/android/commands/uinput/InputAbsInfo;->fuzz:I

    goto :goto_3

    .line 292
    :pswitch_3
    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->readInt()I

    move-result v2

    iput v2, v0, Lsrc/com/android/commands/uinput/InputAbsInfo;->maximum:I

    goto :goto_3

    .line 291
    :pswitch_4
    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->readInt()I

    move-result v2

    iput v2, v0, Lsrc/com/android/commands/uinput/InputAbsInfo;->minimum:I

    goto :goto_3

    .line 290
    :pswitch_5
    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->readInt()I

    move-result v2

    iput v2, v0, Lsrc/com/android/commands/uinput/InputAbsInfo;->value:I

    .line 302
    .end local v1    # "name":Ljava/lang/String;
    :goto_3
    goto/16 :goto_0

    .line 298
    .restart local v1    # "name":Ljava/lang/String;
    :goto_4
    iget-object v2, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v2}, Landroid/util/JsonReader;->endObject()V

    .line 299
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key in abs info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "absInfo":Lsrc/com/android/commands/uinput/InputAbsInfo;
    .end local p0    # "this":Lcom/android/commands/uinput/JsonStyleParser;
    throw v2

    .line 303
    .end local v1    # "name":Ljava/lang/String;
    .restart local v0    # "absInfo":Lsrc/com/android/commands/uinput/InputAbsInfo;
    .restart local p0    # "this":Lcom/android/commands/uinput/JsonStyleParser;
    :cond_1
    iget-object v1, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    nop

    .line 309
    return-object v0

    .line 304
    :catch_0
    move-exception v1

    .line 305
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->consumeRemainingElements()V

    .line 306
    iget-object v2, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v2}, Landroid/util/JsonReader;->endObject()V

    .line 307
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Encountered malformed data."

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5f5e8754 -> :sswitch_5
        0x2fff79 -> :sswitch_4
        0x30244f -> :sswitch_3
        0x6ac9171 -> :sswitch_2
        0x3259b620 -> :sswitch_1
        0x3f73900e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readAbsInfoArray()Landroid/util/SparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lsrc/com/android/commands/uinput/InputAbsInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 316
    .local v0, "infoArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lsrc/com/android/commands/uinput/InputAbsInfo;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V

    .line 317
    :goto_0
    iget-object v1, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 318
    const/4 v1, 0x0

    .line 319
    .local v1, "type":I
    const/4 v2, 0x0

    .line 320
    .local v2, "absInfo":Lsrc/com/android/commands/uinput/InputAbsInfo;
    iget-object v3, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->beginObject()V

    .line 321
    :goto_1
    iget-object v3, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 322
    iget-object v3, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 323
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    goto :goto_2

    :sswitch_0
    const-string v4, "info"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_3

    :sswitch_1
    const-string v4, "code"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_3

    :goto_2
    const/4 v4, -0x1

    :goto_3
    packed-switch v4, :pswitch_data_0

    .line 327
    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->consumeRemainingElements()V

    goto :goto_5

    .line 325
    :pswitch_0
    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->readAbsInfo()Lsrc/com/android/commands/uinput/InputAbsInfo;

    move-result-object v4

    move-object v2, v4

    .end local v2    # "absInfo":Lsrc/com/android/commands/uinput/InputAbsInfo;
    .local v4, "absInfo":Lsrc/com/android/commands/uinput/InputAbsInfo;
    goto :goto_4

    .line 324
    .end local v4    # "absInfo":Lsrc/com/android/commands/uinput/InputAbsInfo;
    .restart local v2    # "absInfo":Lsrc/com/android/commands/uinput/InputAbsInfo;
    :pswitch_1
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/android/commands/uinput/JsonStyleParser;->readEvdevEventCode(I)I

    move-result v4

    move v1, v4

    .line 333
    .end local v3    # "name":Ljava/lang/String;
    :goto_4
    goto :goto_1

    .line 328
    .restart local v3    # "name":Ljava/lang/String;
    :goto_5
    iget-object v4, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v4}, Landroid/util/JsonReader;->endObject()V

    .line 329
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid key in abs info array: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "infoArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lsrc/com/android/commands/uinput/InputAbsInfo;>;"
    .end local p0    # "this":Lcom/android/commands/uinput/JsonStyleParser;
    throw v4

    .line 334
    .end local v3    # "name":Ljava/lang/String;
    .restart local v0    # "infoArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lsrc/com/android/commands/uinput/InputAbsInfo;>;"
    .restart local p0    # "this":Lcom/android/commands/uinput/JsonStyleParser;
    :cond_1
    iget-object v3, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->endObject()V

    .line 335
    if-eqz v2, :cond_2

    .line 336
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 338
    .end local v1    # "type":I
    .end local v2    # "absInfo":Lsrc/com/android/commands/uinput/InputAbsInfo;
    :cond_2
    goto :goto_0

    .line 339
    :cond_3
    iget-object v1, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    nop

    .line 345
    return-object v0

    .line 340
    :catch_0
    move-exception v1

    .line 341
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->consumeRemainingElements()V

    .line 342
    iget-object v2, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v2}, Landroid/util/JsonReader;->endArray()V

    .line 343
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Encountered malformed data."

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x2eaded -> :sswitch_1
        0x3164ae -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readArrayAsInts(Lcom/android/commands/uinput/JsonStyleParser$IntValueReader;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "nextValueReader"    # Lcom/android/commands/uinput/JsonStyleParser$IntValueReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/commands/uinput/JsonStyleParser$IntValueReader;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V

    .line 271
    :goto_0
    iget-object v1, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    invoke-interface {p1}, Lcom/android/commands/uinput/JsonStyleParser$IntValueReader;->readNextValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    nop

    .line 280
    return-object v0

    .line 275
    :catch_0
    move-exception v1

    .line 276
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->consumeRemainingElements()V

    .line 277
    iget-object v2, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v2}, Landroid/util/JsonReader;->endArray()V

    .line 278
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Encountered malformed data."

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private readBus()I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "val":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x16

    const/16 v5, 0x15

    const/16 v6, 0x14

    const/16 v7, 0x13

    const/16 v8, 0x12

    const/16 v9, 0x11

    const/16 v10, 0x10

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v16, 0x1

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v3, "VIRTUAL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v12

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "BLUETOOTH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v13

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "XTKBD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "RS232"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "I8042"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "ATARI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v9

    goto/16 :goto_1

    :sswitch_6
    const-string v3, "AMIGA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_7
    const-string v3, "HOST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xf

    goto/16 :goto_1

    :sswitch_8
    const-string v3, "USB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v15

    goto/16 :goto_1

    :sswitch_9
    const-string v3, "SPI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v8

    goto/16 :goto_1

    :sswitch_a
    const-string v3, "RMI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v7

    goto/16 :goto_1

    :sswitch_b
    const-string v3, "PCI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto/16 :goto_1

    :sswitch_c
    const-string v3, "ISA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v11

    goto/16 :goto_1

    :sswitch_d
    const-string v3, "I2C"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_e
    const-string v3, "HIL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v14

    goto :goto_1

    :sswitch_f
    const-string v3, "GSC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v10

    goto :goto_1

    :sswitch_10
    const-string v3, "CEC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v6

    goto :goto_1

    :sswitch_11
    const-string v3, "ADB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xd

    goto :goto_1

    :sswitch_12
    const-string v3, "PARPORT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    goto :goto_1

    :sswitch_13
    const-string v3, "AMD_SFH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_1

    :sswitch_14
    const-string v3, "INTEL_ISHTP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    goto :goto_1

    :sswitch_15
    const-string v3, "GAMEPORT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    goto :goto_1

    :sswitch_16
    const-string v3, "ISAPNP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move/from16 v2, v16

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 182
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid bus ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 181
    :pswitch_0
    const/16 v4, 0x20

    goto :goto_2

    .line 180
    :pswitch_1
    const/16 v4, 0x1f

    goto :goto_2

    .line 179
    :pswitch_2
    const/16 v4, 0x1e

    goto :goto_2

    .line 178
    :pswitch_3
    const/16 v4, 0x1d

    goto :goto_2

    .line 177
    :pswitch_4
    const/16 v4, 0x1c

    goto :goto_2

    .line 176
    :pswitch_5
    const/16 v4, 0x1b

    goto :goto_2

    .line 175
    :pswitch_6
    const/16 v4, 0x1a

    goto :goto_2

    .line 174
    :pswitch_7
    const/16 v4, 0x19

    goto :goto_2

    .line 173
    :pswitch_8
    const/16 v4, 0x18

    goto :goto_2

    .line 172
    :pswitch_9
    const/16 v4, 0x17

    goto :goto_2

    .line 171
    :pswitch_a
    goto :goto_2

    .line 170
    :pswitch_b
    move v4, v5

    goto :goto_2

    .line 169
    :pswitch_c
    move v4, v6

    goto :goto_2

    .line 168
    :pswitch_d
    move v4, v7

    goto :goto_2

    .line 167
    :pswitch_e
    move v4, v8

    goto :goto_2

    .line 166
    :pswitch_f
    move v4, v9

    goto :goto_2

    .line 165
    :pswitch_10
    move v4, v10

    goto :goto_2

    .line 164
    :pswitch_11
    move v4, v11

    goto :goto_2

    .line 163
    :pswitch_12
    move v4, v12

    goto :goto_2

    .line 162
    :pswitch_13
    move v4, v13

    goto :goto_2

    .line 161
    :pswitch_14
    move v4, v14

    goto :goto_2

    .line 160
    :pswitch_15
    move v4, v15

    goto :goto_2

    .line 159
    :pswitch_16
    move/from16 v4, v16

    .line 158
    :goto_2
    return v4

    :sswitch_data_0
    .sparse-switch
        -0x7ebdd9a5 -> :sswitch_16
        -0x3ac0748d -> :sswitch_15
        -0x1ba1896f -> :sswitch_14
        -0xa3b1ed2 -> :sswitch_13
        -0x479637e -> :sswitch_12
        0xfc7f -> :sswitch_11
        0x10421 -> :sswitch_10
        0x114d7 -> :sswitch_f
        0x1176b -> :sswitch_e
        0x1185a -> :sswitch_d
        0x11c57 -> :sswitch_c
        0x134b6 -> :sswitch_b
        0x13d6e -> :sswitch_a
        0x1418c -> :sswitch_9
        0x14964 -> :sswitch_8
        0x21eda8 -> :sswitch_7
        0x3b81337 -> :sswitch_6
        0x3bb2525 -> :sswitch_5
        0x41ee33f -> :sswitch_4
        0x4aa0430 -> :sswitch_3
        0x4ff6551 -> :sswitch_2
        0x1b72d28e -> :sswitch_1
        0x4694aaeb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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

.method private readCommand()Lcom/android/commands/uinput/Event$Command;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "commandStr":Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "delay"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v2, "sync"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v2, "register"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v2, "inject"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_4
    const-string v2, "updatetimebase"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 102
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid command \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :pswitch_0
    sget-object v1, Lcom/android/commands/uinput/Event$Command;->UPDATE_TIME_BASE:Lcom/android/commands/uinput/Event$Command;

    goto :goto_2

    .line 100
    :pswitch_1
    sget-object v1, Lcom/android/commands/uinput/Event$Command;->SYNC:Lcom/android/commands/uinput/Event$Command;

    goto :goto_2

    .line 99
    :pswitch_2
    sget-object v1, Lcom/android/commands/uinput/Event$Command;->INJECT:Lcom/android/commands/uinput/Event$Command;

    goto :goto_2

    .line 98
    :pswitch_3
    sget-object v1, Lcom/android/commands/uinput/Event$Command;->DELAY:Lcom/android/commands/uinput/Event$Command;

    goto :goto_2

    .line 97
    :pswitch_4
    sget-object v1, Lcom/android/commands/uinput/Event$Command;->REGISTER:Lcom/android/commands/uinput/Event$Command;

    .line 96
    :goto_2
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x4bc87519 -> :sswitch_4
        -0x4693566f -> :sswitch_3
        -0x2923d15d -> :sswitch_2
        0x361a9b -> :sswitch_1
        0x5b0b983 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readConfiguration()Landroid/util/SparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 190
    .local v0, "configuration":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V

    .line 191
    :goto_0
    iget-object v1, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 192
    const/4 v1, 0x0

    .line 193
    .local v1, "controlCode":Lcom/android/commands/uinput/Event$UinputControlCode;
    const/4 v2, 0x0

    .line 194
    .local v2, "data":Ljava/util/stream/IntStream;
    iget-object v3, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->beginObject()V

    .line 195
    :goto_1
    iget-object v3, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    iget-object v3, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    goto :goto_2

    :sswitch_0
    const-string v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_3

    :sswitch_1
    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_3

    :goto_2
    const/4 v4, -0x1

    :goto_3
    packed-switch v4, :pswitch_data_0

    .line 208
    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->consumeRemainingElements()V

    goto :goto_5

    .line 202
    :pswitch_0
    const-string v4, "Configuration \'type\' must be specified before \'data\'."

    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 204
    invoke-direct {p0, v1}, Lcom/android/commands/uinput/JsonStyleParser;->readDataForControlCode(Lcom/android/commands/uinput/Event$UinputControlCode;)Ljava/util/List;

    move-result-object v4

    .line 205
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/commands/uinput/JsonStyleParser$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/android/commands/uinput/JsonStyleParser$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v4

    .line 206
    .end local v2    # "data":Ljava/util/stream/IntStream;
    .local v4, "data":Ljava/util/stream/IntStream;
    move-object v2, v4

    goto :goto_4

    .line 199
    .end local v4    # "data":Ljava/util/stream/IntStream;
    .restart local v2    # "data":Ljava/util/stream/IntStream;
    :pswitch_1
    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->readUinputControlCode()Lcom/android/commands/uinput/Event$UinputControlCode;

    move-result-object v4

    .line 200
    .end local v1    # "controlCode":Lcom/android/commands/uinput/Event$UinputControlCode;
    .local v4, "controlCode":Lcom/android/commands/uinput/Event$UinputControlCode;
    move-object v1, v4

    .line 213
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "controlCode":Lcom/android/commands/uinput/Event$UinputControlCode;
    .restart local v1    # "controlCode":Lcom/android/commands/uinput/Event$UinputControlCode;
    :goto_4
    goto :goto_1

    .line 209
    .restart local v3    # "name":Ljava/lang/String;
    :goto_5
    iget-object v4, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v4}, Landroid/util/JsonReader;->endObject()V

    .line 210
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid key in device configuration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "configuration":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .end local p0    # "this":Lcom/android/commands/uinput/JsonStyleParser;
    throw v4

    .line 214
    .end local v3    # "name":Ljava/lang/String;
    .restart local v0    # "configuration":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .restart local p0    # "this":Lcom/android/commands/uinput/JsonStyleParser;
    :cond_1
    iget-object v3, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->endObject()V

    .line 215
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 216
    invoke-virtual {v1}, Lcom/android/commands/uinput/Event$UinputControlCode;->getValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 217
    .local v3, "existing":[I
    invoke-virtual {v1}, Lcom/android/commands/uinput/Event$UinputControlCode;->getValue()I

    move-result v4

    if-nez v3, :cond_2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v5

    goto :goto_6

    .line 218
    :cond_2
    invoke-static {v3}, Ljava/util/stream/IntStream;->of([I)Ljava/util/stream/IntStream;

    move-result-object v5

    invoke-static {v5, v2}, Ljava/util/stream/IntStream;->concat(Ljava/util/stream/IntStream;Ljava/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v5

    .line 217
    :goto_6
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 220
    .end local v1    # "controlCode":Lcom/android/commands/uinput/Event$UinputControlCode;
    .end local v2    # "data":Ljava/util/stream/IntStream;
    .end local v3    # "existing":[I
    :cond_3
    goto/16 :goto_0

    .line 221
    :cond_4
    iget-object v1, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    nop

    .line 227
    return-object v0

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->consumeRemainingElements()V

    .line 224
    iget-object v2, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v2}, Landroid/util/JsonReader;->endArray()V

    .line 225
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Encountered malformed data."

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :sswitch_data_0
    .sparse-switch
        0x2eefaa -> :sswitch_1
        0x368f3a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readDataForControlCode(Lcom/android/commands/uinput/Event$UinputControlCode;)Ljava/util/List;
    .locals 2
    .param p1, "controlCode"    # Lcom/android/commands/uinput/Event$UinputControlCode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/commands/uinput/Event$UinputControlCode;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    sget-object v0, Lcom/android/commands/uinput/JsonStyleParser$1;->$SwitchMap$com$android$commands$uinput$Event$UinputControlCode:[I

    invoke-virtual {p1}, Lcom/android/commands/uinput/Event$UinputControlCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 258
    :pswitch_0
    new-instance v0, Lcom/android/commands/uinput/JsonStyleParser$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcom/android/commands/uinput/JsonStyleParser$$ExternalSyntheticLambda15;-><init>(Lcom/android/commands/uinput/JsonStyleParser;)V

    invoke-direct {p0, v0}, Lcom/android/commands/uinput/JsonStyleParser;->readArrayAsInts(Lcom/android/commands/uinput/JsonStyleParser$IntValueReader;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 257
    :pswitch_1
    new-instance v0, Lcom/android/commands/uinput/JsonStyleParser$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcom/android/commands/uinput/JsonStyleParser$$ExternalSyntheticLambda14;-><init>(Lcom/android/commands/uinput/JsonStyleParser;)V

    invoke-direct {p0, v0}, Lcom/android/commands/uinput/JsonStyleParser;->readArrayAsInts(Lcom/android/commands/uinput/JsonStyleParser$IntValueReader;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 256
    :pswitch_2
    new-instance v0, Lcom/android/commands/uinput/JsonStyleParser$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/android/commands/uinput/JsonStyleParser$$ExternalSyntheticLambda13;-><init>(Lcom/android/commands/uinput/JsonStyleParser;)V

    invoke-direct {p0, v0}, Lcom/android/commands/uinput/JsonStyleParser;->readArrayAsInts(Lcom/android/commands/uinput/JsonStyleParser$IntValueReader;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 255
    :pswitch_3
    new-instance v0, Lcom/android/commands/uinput/JsonStyleParser$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/android/commands/uinput/JsonStyleParser$$ExternalSyntheticLambda12;-><init>(Lcom/android/commands/uinput/JsonStyleParser;)V

    invoke-direct {p0, v0}, Lcom/android/commands/uinput/JsonStyleParser;->readArrayAsInts(Lcom/android/commands/uinput/JsonStyleParser$IntValueReader;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 254
    :pswitch_4
    new-instance v0, Lcom/android/commands/uinput/JsonStyleParser$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/android/commands/uinput/JsonStyleParser$$ExternalSyntheticLambda11;-><init>(Lcom/android/commands/uinput/JsonStyleParser;)V

    invoke-direct {p0, v0}, Lcom/android/commands/uinput/JsonStyleParser;->readArrayAsInts(Lcom/android/commands/uinput/JsonStyleParser$IntValueReader;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 253
    :pswitch_5
    new-instance v0, Lcom/android/commands/uinput/JsonStyleParser$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/android/commands/uinput/JsonStyleParser$$ExternalSyntheticLambda10;-><init>(Lcom/android/commands/uinput/JsonStyleParser;)V

    invoke-direct {p0, v0}, Lcom/android/commands/uinput/JsonStyleParser;->readArrayAsInts(Lcom/android/commands/uinput/JsonStyleParser$IntValueReader;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 252
    :pswitch_6
    new-instance v0, Lcom/android/commands/uinput/JsonStyleParser$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/android/commands/uinput/JsonStyleParser$$ExternalSyntheticLambda9;-><init>(Lcom/android/commands/uinput/JsonStyleParser;)V

    invoke-direct {p0, v0}, Lcom/android/commands/uinput/JsonStyleParser;->readArrayAsInts(Lcom/android/commands/uinput/JsonStyleParser$IntValueReader;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 251
    :pswitch_7
    new-instance v0, Lcom/android/commands/uinput/JsonStyleParser$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/commands/uinput/JsonStyleParser$$ExternalSyntheticLambda8;-><init>(Lcom/android/commands/uinput/JsonStyleParser;)V

    invoke-direct {p0, v0}, Lcom/android/commands/uinput/JsonStyleParser;->readArrayAsInts(Lcom/android/commands/uinput/JsonStyleParser$IntValueReader;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 250
    :pswitch_8
    new-instance v0, Lcom/android/commands/uinput/JsonStyleParser$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/commands/uinput/JsonStyleParser$$ExternalSyntheticLambda7;-><init>(Lcom/android/commands/uinput/JsonStyleParser;)V

    invoke-direct {p0, v0}, Lcom/android/commands/uinput/JsonStyleParser;->readArrayAsInts(Lcom/android/commands/uinput/JsonStyleParser$IntValueReader;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 249
    :pswitch_9
    new-instance v0, Lcom/android/commands/uinput/JsonStyleParser$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/commands/uinput/JsonStyleParser$$ExternalSyntheticLambda6;-><init>(Lcom/android/commands/uinput/JsonStyleParser;)V

    invoke-direct {p0, v0}, Lcom/android/commands/uinput/JsonStyleParser;->readArrayAsInts(Lcom/android/commands/uinput/JsonStyleParser$IntValueReader;)Ljava/util/ArrayList;

    move-result-object v0

    .line 248
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

.method private readEvdevEventCode(I)I
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    new-instance v0, Lcom/android/commands/uinput/JsonStyleParser$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/commands/uinput/JsonStyleParser$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/commands/uinput/JsonStyleParser;->readValueAsInt(Ljava/util/function/Function;)I

    move-result v0

    return v0
.end method

.method private readEvdevEventType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    new-instance v0, Lcom/android/commands/uinput/JsonStyleParser$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/commands/uinput/JsonStyleParser$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/commands/uinput/JsonStyleParser;->readValueAsInt(Ljava/util/function/Function;)I

    move-result v0

    return v0
.end method

.method private readEvdevInputProp()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    new-instance v0, Lcom/android/commands/uinput/JsonStyleParser$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/commands/uinput/JsonStyleParser$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/commands/uinput/JsonStyleParser;->readValueAsInt(Ljava/util/function/Function;)I

    move-result v0

    return v0
.end method

.method private readInjectedEvents()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V

    .line 110
    :goto_0
    iget-object v1, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->readEvdevEventType()I

    move-result v1

    .line 114
    .local v1, "type":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-direct {p0, v1}, Lcom/android/commands/uinput/JsonStyleParser;->readEvdevEventCode(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    nop

    .end local v1    # "type":I
    goto :goto_0

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    nop

    .line 124
    return-object v0

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->consumeRemainingElements()V

    .line 121
    iget-object v2, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v2}, Landroid/util/JsonReader;->endArray()V

    .line 122
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Encountered malformed data."

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private readInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    new-instance v0, Lcom/android/commands/uinput/JsonStyleParser$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/commands/uinput/JsonStyleParser$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/commands/uinput/JsonStyleParser;->readValueAsInt(Ljava/util/function/Function;)I

    move-result v0

    return v0
.end method

.method private readUinputControlCode()Lcom/android/commands/uinput/Event$UinputControlCode;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    new-instance v0, Lcom/android/commands/uinput/JsonStyleParser$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/commands/uinput/JsonStyleParser$$ExternalSyntheticLambda5;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/commands/uinput/JsonStyleParser;->readValueAsInt(Ljava/util/function/Function;)I

    move-result v0

    .line 238
    .local v0, "code":I
    invoke-static {}, Lcom/android/commands/uinput/Event$UinputControlCode;->values()[Lcom/android/commands/uinput/Event$UinputControlCode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 239
    .local v4, "controlCode":Lcom/android/commands/uinput/Event$UinputControlCode;
    invoke-virtual {v4}, Lcom/android/commands/uinput/Event$UinputControlCode;->getValue()I

    move-result v5

    if-ne v5, v0, :cond_0

    .line 240
    return-object v4

    .line 238
    .end local v4    # "controlCode":Lcom/android/commands/uinput/Event$UinputControlCode;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 243
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private readValueAsInt(Ljava/util/function/Function;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    .local p1, "stringToInt":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v0, Lcom/android/commands/uinput/JsonStyleParser$1;->$SwitchMap$android$util$JsonToken:[I

    iget-object v1, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Encountered malformed data. Expected int or string."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :pswitch_0
    iget-object v0, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "str":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 137
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 130
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :pswitch_1
    iget-object v0, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getNextEvent()Lcom/android/commands/uinput/Event;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "e":Lcom/android/commands/uinput/Event;
    :goto_0
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->END_DOCUMENT:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_2

    .line 54
    new-instance v1, Lcom/android/commands/uinput/Event$Builder;

    invoke-direct {v1}, Lcom/android/commands/uinput/Event$Builder;-><init>()V

    .line 56
    .local v1, "eb":Lcom/android/commands/uinput/Event$Builder;
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v2}, Landroid/util/JsonReader;->beginObject()V

    .line 57
    :goto_1
    iget-object v2, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v2}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    iget-object v2, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v2}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto/16 :goto_2

    :sswitch_0
    const-string v3, "configuration"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto/16 :goto_3

    :sswitch_1
    const-string v3, "abs_info"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    goto/16 :goto_3

    :sswitch_2
    const-string v3, "ff_effects_max"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto/16 :goto_3

    :sswitch_3
    const-string v3, "command"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_3

    :sswitch_4
    const-string v3, "syncToken"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xc

    goto :goto_3

    :sswitch_5
    const-string v3, "port"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xb

    goto :goto_3

    :sswitch_6
    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_3

    :sswitch_7
    const-string v3, "vid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_3

    :sswitch_8
    const-string v3, "pid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_3

    :sswitch_9
    const-string v3, "bus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_3

    :sswitch_a
    const-string v3, "id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_3

    :sswitch_b
    const-string v3, "events"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto :goto_3

    :sswitch_c
    const-string v3, "duration"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    goto :goto_3

    :goto_2
    const/4 v3, -0x1

    :goto_3
    packed-switch v3, :pswitch_data_0

    .line 78
    iget-object v3, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    goto/16 :goto_4

    .line 77
    :pswitch_0
    iget-object v3, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/commands/uinput/Event$Builder;->setSyncToken(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 76
    :pswitch_1
    iget-object v3, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/commands/uinput/Event$Builder;->setInputPort(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 75
    :pswitch_2
    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->readInt()I

    move-result v3

    int-to-long v3, v3

    const-wide/32 v5, 0xf4240

    mul-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Lcom/android/commands/uinput/Event$Builder;->setDurationNanos(J)V

    goto :goto_5

    .line 73
    :pswitch_3
    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->readAbsInfoArray()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/commands/uinput/Event$Builder;->setAbsInfo(Landroid/util/SparseArray;)V

    goto :goto_5

    .line 72
    :pswitch_4
    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->readInt()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/commands/uinput/Event$Builder;->setFfEffectsMax(I)V

    goto :goto_5

    .line 71
    :pswitch_5
    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->readConfiguration()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/commands/uinput/Event$Builder;->setConfiguration(Landroid/util/SparseArray;)V

    goto :goto_5

    .line 67
    :pswitch_6
    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->readInjectedEvents()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/commands/uinput/JsonStyleParser$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/android/commands/uinput/JsonStyleParser$$ExternalSyntheticLambda1;-><init>()V

    .line 68
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v3

    .line 69
    .local v3, "injections":[I
    invoke-virtual {v1, v3}, Lcom/android/commands/uinput/Event$Builder;->setInjections([I)V

    .line 70
    .end local v3    # "injections":[I
    goto :goto_5

    .line 65
    :pswitch_7
    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->readBus()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/commands/uinput/Event$Builder;->setBusId(I)V

    goto :goto_5

    .line 64
    :pswitch_8
    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->readInt()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/commands/uinput/Event$Builder;->setProductId(I)V

    goto :goto_5

    .line 63
    :pswitch_9
    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->readInt()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/commands/uinput/Event$Builder;->setVendorId(I)V

    goto :goto_5

    .line 62
    :pswitch_a
    iget-object v3, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/commands/uinput/Event$Builder;->setName(Ljava/lang/String;)V

    goto :goto_5

    .line 61
    :pswitch_b
    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->readCommand()Lcom/android/commands/uinput/Event$Command;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/commands/uinput/Event$Builder;->setCommand(Lcom/android/commands/uinput/Event$Command;)V

    goto :goto_5

    .line 60
    :pswitch_c
    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->readInt()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/commands/uinput/Event$Builder;->setId(I)V

    goto :goto_5

    .line 78
    :goto_4
    invoke-virtual {v3}, Landroid/util/JsonReader;->skipValue()V

    .line 80
    .end local v2    # "name":Ljava/lang/String;
    :goto_5
    goto/16 :goto_1

    .line 81
    :cond_1
    iget-object v2, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v2}, Landroid/util/JsonReader;->endObject()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    nop

    .line 88
    invoke-virtual {v1}, Lcom/android/commands/uinput/Event$Builder;->build()Lcom/android/commands/uinput/Event;

    move-result-object v0

    .line 89
    .end local v1    # "eb":Lcom/android/commands/uinput/Event$Builder;
    goto/16 :goto_0

    .line 82
    .restart local v1    # "eb":Lcom/android/commands/uinput/Event$Builder;
    :catch_0
    move-exception v2

    .line 83
    .local v2, "ex":Ljava/lang/IllegalStateException;
    const-string v3, "Error reading in object, ignoring."

    invoke-static {v3, v2}, Lcom/android/commands/uinput/JsonStyleParser;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 84
    invoke-direct {p0}, Lcom/android/commands/uinput/JsonStyleParser;->consumeRemainingElements()V

    .line 85
    iget-object v3, p0, Lcom/android/commands/uinput/JsonStyleParser;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->endObject()V

    .line 86
    goto/16 :goto_0

    .line 91
    .end local v1    # "eb":Lcom/android/commands/uinput/Event$Builder;
    .end local v2    # "ex":Ljava/lang/IllegalStateException;
    :cond_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x76bbb26c -> :sswitch_c
        -0x4cf81ee7 -> :sswitch_b
        0xd1b -> :sswitch_a
        0x17e80 -> :sswitch_9
        0x1b18b -> :sswitch_8
        0x1c811 -> :sswitch_7
        0x337a8b -> :sswitch_6
        0x349881 -> :sswitch_5
        0x1cdd181e -> :sswitch_4
        0x38a5df4b -> :sswitch_3
        0x459447a8 -> :sswitch_2
        0x661e1c5b -> :sswitch_1
        0x733374f6 -> :sswitch_0
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
