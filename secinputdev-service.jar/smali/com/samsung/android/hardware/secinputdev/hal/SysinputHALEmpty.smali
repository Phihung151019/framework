.class Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALEmpty;
.super Ljava/lang/Object;
.source "SysinputHALFactory.java"

# interfaces
.implements Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;


# static fields
.field private static final FILE_PATH_TSP_CMD:Ljava/lang/String; = "/sys/class/sec/tsp/cmd"

.field private static final FILE_PATH_TSP_CMD_LIST:Ljava/lang/String; = "/sys/class/sec/tsp/cmd_list"

.field private static final FILE_PATH_TSP_SUPPORT_FEATURE:Ljava/lang/String; = "/sys/class/sec/tsp/support_feature"

.field private static final TAG:Ljava/lang/String; = "SysinputHALEmpty"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const-string v0, "SysinputHALEmpty"

    const-string v1, "Empty Hal Instance"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method


# virtual methods
.method public getProperty(ILcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)Ljava/lang/String;
    .locals 11
    .param p1, "devid"    # I
    .param p2, "property"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    .line 142
    const/4 v0, 0x1

    const-string v1, " is not support"

    const-string v2, "NG"

    const-string v3, "SysinputHALEmpty"

    if-eq p1, v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProperty: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-object v2

    .line 146
    :cond_0
    const/4 v0, 0x0

    .line 147
    .local v0, "path":Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->CMD_LIST:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    const-string v5, "): "

    const-string v6, "getProperty("

    if-ne p2, v4, :cond_1

    .line 148
    const-string v0, "/sys/class/sec/tsp/cmd_list"

    goto :goto_0

    .line 149
    :cond_1
    sget-object v4, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->FEATURE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    if-ne p2, v4, :cond_4

    .line 150
    const-string v0, "/sys/class/sec/tsp/support_feature"

    .line 156
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 158
    .local v1, "buffer":Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v7, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .local v4, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 162
    .local v7, "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .local v9, "result":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 163
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 165
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 166
    .end local v9    # "result":Ljava/lang/String;
    .local v8, "result":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x32

    if-ge v9, v10, :cond_3

    .line 167
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 169
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    :goto_2
    nop

    .line 172
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 171
    return-object v8

    .line 157
    .end local v8    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v6

    :try_start_6
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .end local v4    # "fr":Ljava/io/FileReader;
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALEmpty;
    .end local p1    # "devid":I
    .end local p2    # "property":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    :goto_3
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "path":Ljava/lang/String;
    .restart local v1    # "buffer":Ljava/lang/StringBuffer;
    .restart local v4    # "fr":Ljava/io/FileReader;
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALEmpty;
    .restart local p1    # "devid":I
    .restart local p2    # "property":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    :catchall_2
    move-exception v5

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v6

    :try_start_8
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALEmpty;
    .end local p1    # "devid":I
    .end local p2    # "property":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    :goto_4
    throw v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 172
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v0    # "path":Ljava/lang/String;
    .restart local v1    # "buffer":Ljava/lang/StringBuffer;
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALEmpty;
    .restart local p1    # "devid":I
    .restart local p2    # "property":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    :catch_0
    move-exception v4

    .line 173
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v4    # "e":Ljava/lang/Exception;
    return-object v2

    .line 152
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-object v2
.end method

.method public getVersion()F
    .locals 1

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public setProperty(ILcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;Ljava/lang/String;)I
    .locals 8
    .param p1, "devid"    # I
    .param p2, "property"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    .param p3, "mode"    # Ljava/lang/String;

    .line 115
    const/4 v0, 0x1

    const-string v1, " is not support"

    const-string v2, "SysinputHALEmpty"

    if-eq p1, v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProperty: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v0, -0x2

    return v0

    .line 119
    :cond_0
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->CMD:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    const-string v3, "): "

    const-string v4, "setProperty("

    if-eq p2, v0, :cond_1

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v0, -0x5

    return v0

    .line 124
    :cond_1
    const/4 v0, -0x7

    .line 125
    .local v0, "ret":I
    const-string v1, "/sys/class/sec/tsp/cmd"

    .line 127
    .local v1, "path":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/FileWriter;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .local v5, "fw":Ljava/io/FileWriter;
    :try_start_1
    new-instance v6, Ljava/io/BufferedWriter;

    invoke-direct {v6, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 130
    .local v6, "writer":Ljava/io/BufferedWriter;
    :try_start_2
    invoke-virtual {v6, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    .line 132
    const/4 v0, 0x0

    .line 133
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;->getDeviceFromInt(I)Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface$Device;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v6    # "writer":Ljava/io/BufferedWriter;
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 136
    .end local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_2

    .line 126
    .restart local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "ret":I
    .end local v1    # "path":Ljava/lang/String;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALEmpty;
    .end local p1    # "devid":I
    .end local p2    # "property":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    .end local p3    # "mode":Ljava/lang/String;
    :goto_0
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v6    # "writer":Ljava/io/BufferedWriter;
    .restart local v0    # "ret":I
    .restart local v1    # "path":Ljava/lang/String;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALEmpty;
    .restart local p1    # "devid":I
    .restart local p2    # "property":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    .restart local p3    # "mode":Ljava/lang/String;
    :catchall_2
    move-exception v3

    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v4

    :try_start_8
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "ret":I
    .end local v1    # "path":Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALEmpty;
    .end local p1    # "devid":I
    .end local p2    # "property":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    .end local p3    # "mode":Ljava/lang/String;
    :goto_1
    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 134
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v0    # "ret":I
    .restart local v1    # "path":Ljava/lang/String;
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALEmpty;
    .restart local p1    # "devid":I
    .restart local p2    # "property":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    .restart local p3    # "mode":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 135
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    return v0
.end method
