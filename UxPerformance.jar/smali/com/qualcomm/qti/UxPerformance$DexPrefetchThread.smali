.class Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;
.super Ljava/lang/Object;
.source "UxPerformance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/UxPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DexPrefetchThread"
.end annotation


# instance fields
.field public blacklist CodePath:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/qualcomm/qti/UxPerformance;


# direct methods
.method public constructor blacklist <init>(Lcom/qualcomm/qti/UxPerformance;Ljava/lang/String;)V
    .locals 0
    .param p2, "CodePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;->this$0:Lcom/qualcomm/qti/UxPerformance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p2, p0, Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;->CodePath:Ljava/lang/String;

    .line 157
    return-void
.end method


# virtual methods
.method public blacklist LoadFiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "FileName"    # Ljava/lang/String;

    .line 161
    const-string v1, "at "

    const-string v0, ".odex"

    const-string v2, ".vdex"

    const-string v3, ".art"

    filled-new-array {v3, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 162
    .local v2, "Files":[Ljava/lang/String;
    iget-object v0, p0, Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;->this$0:Lcom/qualcomm/qti/UxPerformance;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " LoadFiles() path is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$mQLogD(Lcom/qualcomm/qti/UxPerformance;Ljava/lang/String;)V

    .line 163
    const/4 v0, 0x0

    move v3, v0

    .local v3, "i":I
    :goto_0
    array-length v0, v2

    if-ge v3, v0, :cond_3

    .line 165
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 166
    .local v4, "MyFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v0, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    move-object v5, v0

    .line 170
    .local v5, "fileChannel":Ljava/nio/channels/FileChannel;
    sget-object v6, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v9

    const-wide/16 v7, 0x0

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    .line 171
    .local v0, "buffer":Ljava/nio/MappedByteBuffer;
    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetEnableDebug()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 172
    iget-object v6, p0, Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;->this$0:Lcom/qualcomm/qti/UxPerformance;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Before Is Buffer Loaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->isLoaded()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$mQLogD(Lcom/qualcomm/qti/UxPerformance;Ljava/lang/String;)V

    .line 173
    :cond_0
    iget-object v6, p0, Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;->this$0:Lcom/qualcomm/qti/UxPerformance;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$mQLogD(Lcom/qualcomm/qti/UxPerformance;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->load()Ljava/nio/MappedByteBuffer;

    .line 175
    invoke-static {}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$sfgetEnableDebug()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 176
    iget-object v6, p0, Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;->this$0:Lcom/qualcomm/qti/UxPerformance;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "After Is Buffer Loaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->isLoaded()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$mQLogD(Lcom/qualcomm/qti/UxPerformance;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 179
    .end local v0    # "buffer":Ljava/nio/MappedByteBuffer;
    .end local v5    # "fileChannel":Ljava/nio/channels/FileChannel;
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;->this$0:Lcom/qualcomm/qti/UxPerformance;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DexPrefetchThread IO Error file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$mQLogE(Lcom/qualcomm/qti/UxPerformance;Ljava/lang/String;)V

    goto :goto_2

    .line 177
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 178
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-object v5, p0, Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;->this$0:Lcom/qualcomm/qti/UxPerformance;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DexPrefetchThread Can not find file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$mQLogE(Lcom/qualcomm/qti/UxPerformance;Ljava/lang/String;)V

    .line 181
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_1
    nop

    .line 163
    .end local v4    # "MyFile":Ljava/io/File;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 184
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method public whitelist test-api run()V
    .locals 9

    .line 188
    const-string v0, "DexPrefetchThread"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;->CodePath:Ljava/lang/String;

    const-string v3, "/data"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "/oat/arm/"

    const-string v4, "/oat/arm64/"

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;->this$0:Lcom/qualcomm/qti/UxPerformance;

    const-string v5, "Data pkg "

    invoke-static {v0, v5}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$mQLogD(Lcom/qualcomm/qti/UxPerformance;Ljava/lang/String;)V

    .line 193
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;->CodePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v5, "base"

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;->CodePath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;->LoadFiles(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 197
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;->CodePath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;->CodePath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;->LoadFiles(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;->this$0:Lcom/qualcomm/qti/UxPerformance;

    const-string v5, "system/vendor pkg "

    invoke-static {v0, v5}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$mQLogD(Lcom/qualcomm/qti/UxPerformance;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;->CodePath:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "SplitPath":[Ljava/lang/String;
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v0, v5

    .line 208
    .local v5, "PkgName":Ljava/lang/String;
    iget-object v6, p0, Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;->this$0:Lcom/qualcomm/qti/UxPerformance;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PKgNAme : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/qti/UxPerformance;->-$$Nest$mQLogD(Lcom/qualcomm/qti/UxPerformance;Ljava/lang/String;)V

    .line 211
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;->CodePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;->CodePath:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v5}, Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;->LoadFiles(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_2
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;->CodePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;->CodePath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v5}, Lcom/qualcomm/qti/UxPerformance$DexPrefetchThread;->LoadFiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .end local v0    # "SplitPath":[Ljava/lang/String;
    .end local v5    # "PkgName":Ljava/lang/String;
    :cond_3
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 221
    return-void
.end method
