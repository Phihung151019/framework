.class Lcom/android/commands/am/Instrument$ProtoStatusReporter;
.super Ljava/lang/Object;
.source "Instrument.java"

# interfaces
.implements Lcom/android/commands/am/Instrument$StatusReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/am/Instrument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProtoStatusReporter"
.end annotation


# instance fields
.field private mLog:Ljava/io/File;

.field private mTestStartMs:J

.field final synthetic this$0:Lcom/android/commands/am/Instrument;


# direct methods
.method constructor <init>(Lcom/android/commands/am/Instrument;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 231
    iput-object p1, p0, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->this$0:Lcom/android/commands/am/Instrument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iget-boolean v0, p1, Lcom/android/commands/am/Instrument;->protoFile:Z

    if-eqz v0, :cond_3

    .line 233
    iget-object v0, p1, Lcom/android/commands/am/Instrument;->logPath:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Unable to create log directory: %s\n"

    if-nez v0, :cond_1

    .line 234
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "instrument-logs"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 236
    .local v0, "logDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 237
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 238
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 237
    invoke-virtual {v3, v2, v4}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 239
    iput-boolean v1, p1, Lcom/android/commands/am/Instrument;->protoFile:Z

    .line 240
    return-void

    .line 242
    :cond_0
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd-hhmmss-SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p1, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 243
    .local p1, "format":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 244
    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 243
    const-string v2, "log-%s.instrumentation_data_proto"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->mLog:Ljava/io/File;

    .line 246
    .end local v0    # "logDir":Ljava/io/File;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local p1    # "format":Ljava/text/SimpleDateFormat;
    goto :goto_0

    .line 247
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    iget-object v4, p1, Lcom/android/commands/am/Instrument;->logPath:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->mLog:Ljava/io/File;

    .line 248
    iget-object v0, p0, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->mLog:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 249
    .restart local v0    # "logDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_2

    .line 250
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 251
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 250
    invoke-virtual {v3, v2, v4}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 252
    iput-boolean v1, p1, Lcom/android/commands/am/Instrument;->protoFile:Z

    .line 253
    return-void

    .line 256
    .end local v0    # "logDir":Ljava/io/File;
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->mLog:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->mLog:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 258
    :cond_3
    return-void
.end method

.method private outputProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 355
    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v0

    .line 356
    .local v0, "out":[B
    iget-object v1, p0, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->this$0:Lcom/android/commands/am/Instrument;

    iget-boolean v1, v1, Lcom/android/commands/am/Instrument;->protoStd:Z

    if-eqz v1, :cond_0

    .line 358
    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->write([B)V

    .line 359
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    goto :goto_0

    .line 360
    :catch_0
    move-exception v1

    .line 361
    .local v1, "ex":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error writing finished response: "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 362
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 365
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->this$0:Lcom/android/commands/am/Instrument;

    iget-boolean v1, v1, Lcom/android/commands/am/Instrument;->protoFile:Z

    if-eqz v1, :cond_1

    .line 366
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->mLog:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 367
    .local v1, "os":Ljava/io/OutputStream;
    :try_start_2
    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 368
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 369
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 372
    .end local v1    # "os":Ljava/io/OutputStream;
    goto :goto_2

    .line 366
    .restart local v1    # "os":Ljava/io/OutputStream;
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "out":[B
    .end local p0    # "this":Lcom/android/commands/am/Instrument$ProtoStatusReporter;
    .end local p1    # "proto":Landroid/util/proto/ProtoOutputStream;
    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 369
    .end local v1    # "os":Ljava/io/OutputStream;
    .restart local v0    # "out":[B
    .restart local p0    # "this":Lcom/android/commands/am/Instrument$ProtoStatusReporter;
    .restart local p1    # "proto":Landroid/util/proto/ProtoOutputStream;
    :catch_1
    move-exception v1

    .line 370
    .local v1, "ex":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object v3, p0, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->mLog:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Cannot write to %s:\n"

    invoke-virtual {v2, v4, v3}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 371
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 374
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_1
    :goto_2
    return-void
.end method

.method private writeBundle(Landroid/util/proto/ProtoOutputStream;JLandroid/os/Bundle;)V
    .locals 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "bundle"    # Landroid/os/Bundle;

    .line 316
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 318
    .local v0, "bundleToken":J
    invoke-virtual {p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/android/commands/am/Instrument;->-$$Nest$smsorted(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 319
    .local v3, "key":Ljava/lang/String;
    const-wide v4, 0x20b00000001L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->startRepeatedObject(J)J

    move-result-wide v4

    .line 322
    .local v4, "entryToken":J
    const-wide v6, 0x10900000001L

    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 324
    invoke-virtual {p4, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 325
    .local v6, "val":Ljava/lang/Object;
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 326
    const-wide v7, 0x10900000002L

    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto/16 :goto_1

    .line 328
    :cond_0
    instance-of v7, v6, Ljava/lang/Byte;

    const-wide v8, 0x11100000003L

    if-eqz v7, :cond_1

    .line 329
    move-object v7, v6

    check-cast v7, Ljava/lang/Byte;

    .line 330
    invoke-virtual {v7}, Ljava/lang/Byte;->intValue()I

    move-result v7

    .line 329
    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto/16 :goto_1

    .line 331
    :cond_1
    instance-of v7, v6, Ljava/lang/Double;

    if-eqz v7, :cond_2

    .line 332
    move-object v7, v6

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const-wide v9, 0x10100000005L

    invoke-virtual {p1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    goto :goto_1

    .line 333
    :cond_2
    instance-of v7, v6, Ljava/lang/Float;

    if-eqz v7, :cond_3

    .line 334
    move-object v7, v6

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    const-wide v8, 0x10200000004L

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    goto :goto_1

    .line 335
    :cond_3
    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_4

    .line 336
    move-object v7, v6

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_1

    .line 337
    :cond_4
    instance-of v7, v6, Ljava/lang/Long;

    if-eqz v7, :cond_5

    .line 338
    move-object v7, v6

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide v9, 0x11200000006L

    invoke-virtual {p1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    goto :goto_1

    .line 339
    :cond_5
    instance-of v7, v6, Ljava/lang/Short;

    if-eqz v7, :cond_6

    .line 340
    move-object v7, v6

    check-cast v7, Ljava/lang/Short;

    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v7

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_1

    .line 341
    :cond_6
    instance-of v7, v6, Landroid/os/Bundle;

    if-eqz v7, :cond_7

    .line 342
    const-wide v7, 0x10b00000007L

    move-object v9, v6

    check-cast v9, Landroid/os/Bundle;

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->writeBundle(Landroid/util/proto/ProtoOutputStream;JLandroid/os/Bundle;)V

    goto :goto_1

    .line 344
    :cond_7
    instance-of v7, v6, [B

    if-eqz v7, :cond_8

    .line 345
    const-wide v7, 0x10c00000008L

    move-object v9, v6

    check-cast v9, [B

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 348
    :cond_8
    :goto_1
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 349
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "entryToken":J
    .end local v6    # "val":Ljava/lang/Object;
    goto/16 :goto_0

    .line 351
    :cond_9
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 352
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "errorText"    # Ljava/lang/String;
    .param p2, "commandError"    # Z

    .line 304
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 306
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v1, 0x10b00000002L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 307
    .local v1, "sessionStatusToken":J
    const-wide v3, 0x10e00000001L

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 309
    const-wide v3, 0x10900000002L

    invoke-virtual {v0, v3, v4, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 310
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 312
    invoke-direct {p0, v0}, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->outputProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 313
    return-void
.end method

.method public onInstrumentationFinishedLocked(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "resultCode"    # I
    .param p3, "results"    # Landroid/os/Bundle;

    .line 290
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 292
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v1, 0x10b00000002L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 293
    .local v1, "sessionStatusToken":J
    const-wide v3, 0x10e00000001L

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 295
    const-wide v3, 0x11100000003L

    invoke-virtual {v0, v3, v4, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 296
    const-wide v3, 0x10b00000004L

    invoke-direct {p0, v0, v3, v4, p3}, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->writeBundle(Landroid/util/proto/ProtoOutputStream;JLandroid/os/Bundle;)V

    .line 297
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 299
    invoke-direct {p0, v0}, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->outputProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 300
    return-void
.end method

.method public onInstrumentationStatusLocked(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    .locals 9
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "resultCode"    # I
    .param p3, "results"    # Landroid/os/Bundle;

    .line 263
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 265
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v1, 0x20b00000001L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 267
    .local v1, "testStatusToken":J
    const-wide v3, 0x11100000003L

    invoke-virtual {v0, v3, v4, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 268
    const-wide v3, 0x10b00000004L

    invoke-direct {p0, v0, v3, v4, p3}, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->writeBundle(Landroid/util/proto/ProtoOutputStream;JLandroid/os/Bundle;)V

    .line 270
    iget-object v3, p0, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->this$0:Lcom/android/commands/am/Instrument;

    iget-boolean v3, v3, Lcom/android/commands/am/Instrument;->captureLogcat:Z

    if-eqz v3, :cond_2

    .line 271
    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->mTestStartMs:J

    goto :goto_0

    .line 275
    :cond_0
    iget-wide v3, p0, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->mTestStartMs:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 276
    iget-wide v3, p0, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->mTestStartMs:J

    .line 277
    invoke-static {v3, v4}, Lcom/android/commands/am/Instrument;->-$$Nest$smreadLogcat(J)Ljava/lang/String;

    move-result-object v3

    .line 276
    const-wide v7, 0x10900000005L

    invoke-virtual {v0, v7, v8, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 279
    :cond_1
    iput-wide v5, p0, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->mTestStartMs:J

    .line 282
    :cond_2
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 284
    invoke-direct {p0, v0}, Lcom/android/commands/am/Instrument$ProtoStatusReporter;->outputProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 285
    return-void
.end method
