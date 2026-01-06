.class Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$FreefallFileManager;
.super Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$FileManager;
.source "MotionRecognitionSensorChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FreefallFileManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$FileManager<",
        "Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 2253
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$FileManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2254
    return-void
.end method


# virtual methods
.method createFile(Ljava/lang/String;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .line 2259
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$FreefallFileManager;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2260
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2261
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 2263
    .local v1, "parentFile":Ljava/io/File;
    const-string v2, " = "

    const-string v3, "SENSORBD"

    if-eqz v1, :cond_0

    .line 2264
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    .line 2265
    .local v4, "ret":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mkdir: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$FreefallFileManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    .end local v4    # "ret":Z
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v4

    .line 2269
    .restart local v4    # "ret":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createNewFile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$FreefallFileManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2272
    goto :goto_0

    .line 2270
    .end local v4    # "ret":Z
    :catch_0
    move-exception v2

    .line 2271
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 2274
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$FreefallFileManager;->mFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2275
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_2
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 2276
    .local v3, "byteArray":[B
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2277
    .end local v3    # "byteArray":[B
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2279
    .end local v2    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 2274
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "parentFile":Ljava/io/File;
    .end local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$FreefallFileManager;
    .end local p1    # "data":Ljava/lang/String;
    :goto_1
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2277
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "parentFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$FreefallFileManager;
    .restart local p1    # "data":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 2278
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 2281
    .end local v1    # "parentFile":Ljava/io/File;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    return-void
.end method

.method readData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2311
    .local p1, "data":Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;, "Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2312
    .local v0, "size":I
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$FreefallFileManager;->mFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2316
    .local v1, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2317
    add-int/lit8 v0, v0, 0x1

    .line 2318
    invoke-virtual {p1, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;->addLast(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2320
    .end local v3    # "line":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2322
    .end local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 2312
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "size":I
    .end local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$FreefallFileManager;
    .end local p1    # "data":Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;, "Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray<Ljava/lang/String;>;"
    :goto_1
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2320
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "size":I
    .restart local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$FreefallFileManager;
    .restart local p1    # "data":Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;, "Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 2321
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 2324
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method bridge synthetic readData(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 2250
    check-cast p1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;

    invoke-virtual {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$FreefallFileManager;->readData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method writeData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2285
    .local p1, "data":Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;, "Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2287
    .local v0, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$FreefallFileManager;->mFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v0, v1

    .line 2289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2290
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2291
    invoke-virtual {p1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2292
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2290
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2294
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2295
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2299
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    nop

    .line 2301
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2304
    :goto_1
    goto :goto_2

    .line 2302
    :catch_0
    move-exception v1

    .line 2303
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 2299
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 2296
    :catch_1
    move-exception v1

    .line 2297
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2299
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_1

    .line 2301
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 2307
    :cond_1
    :goto_2
    return-void

    .line 2299
    :goto_3
    if-eqz v0, :cond_2

    .line 2301
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2304
    goto :goto_4

    .line 2302
    :catch_2
    move-exception v2

    .line 2303
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 2306
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    throw v1
.end method

.method bridge synthetic writeData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 2250
    check-cast p1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;

    invoke-virtual {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$FreefallFileManager;->writeData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;)V

    return-void
.end method
