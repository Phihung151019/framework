.class final Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$FlushDataTask;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FlushDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/wifi/intelligence/ins/data/BaseData;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final category:I

.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final writer:Ljava/io/FileWriter;


# direct methods
.method public constructor <init>(Ljava/io/FileWriter;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileWriter;",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$FlushDataTask;->writer:Ljava/io/FileWriter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$FlushDataTask;->data:Ljava/util/List;

    .line 7
    .line 8
    iput p3, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$FlushDataTask;->category:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    const-string v0, "InsDataManager"

    .line 2
    .line 3
    const-string v1, "Flushing Data to CSV file : Size : "

    .line 4
    .line 5
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$FlushDataTask;->data:Ljava/util/List;

    .line 11
    .line 12
    check-cast v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$smcheckUnusualData()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    goto/16 :goto_3

    .line 35
    .line 36
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$FlushDataTask;->data:Ljava/util/List;

    .line 37
    .line 38
    check-cast v1, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iget v2, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$FlushDataTask;->category:I

    .line 45
    .line 46
    invoke-static {v1, v2}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$smcheckFiles(II)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    iget-object v2, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$FlushDataTask;->writer:Ljava/io/FileWriter;

    .line 51
    .line 52
    if-eqz v2, :cond_4

    .line 53
    .line 54
    sget-object v2, Lcom/samsung/android/wifi/intelligence/ins/util/Const;->SIMPLE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 55
    .line 56
    new-instance v3, Ljava/util/Date;

    .line 57
    .line 58
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iget-object v3, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$FlushDataTask;->data:Ljava/util/List;

    .line 66
    .line 67
    check-cast v3, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    const/4 v5, 0x0

    .line 74
    move v6, v5

    .line 75
    :goto_0
    if-ge v6, v4, :cond_1

    .line 76
    .line 77
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    add-int/lit8 v6, v6, 0x1

    .line 82
    .line 83
    check-cast v7, Lcom/samsung/android/wifi/intelligence/ins/data/BaseData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    :try_start_1
    invoke-virtual {v7, v2}, Lcom/samsung/android/wifi/intelligence/ins/data/BaseData;->setFlushTimestamp(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v8, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$FlushDataTask;->writer:Ljava/io/FileWriter;

    .line 89
    .line 90
    invoke-virtual {v7}, Lcom/samsung/android/wifi/intelligence/ins/data/BaseData;->toCsvString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    invoke-virtual {v8, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    .line 96
    .line 97
    add-int/lit8 v5, v5, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catch_0
    move-exception p0

    .line 101
    goto :goto_2

    .line 102
    :catch_1
    move-exception v7

    .line 103
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v9, "Error writing to file: "

    .line 109
    .line 110
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_1
    iget v2, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$FlushDataTask;->category:I

    .line 132
    .line 133
    const/4 v3, 0x1

    .line 134
    if-ne v2, v3, :cond_2

    .line 135
    .line 136
    invoke-static {}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$sfgetcurrentPathDataLineCounter()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_2
    if-nez v2, :cond_3

    .line 145
    .line 146
    invoke-static {}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$sfgetcurrentNsmDataLineCounter()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 151
    .line 152
    .line 153
    invoke-static {}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$sfgetdataCounter()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 158
    .line 159
    .line 160
    :cond_3
    :goto_1
    invoke-static {}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$sfgetdataJson()Lcom/samsung/android/wifi/intelligence/ins/util/InsDataJson;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    iget v3, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$FlushDataTask;->category:I

    .line 165
    .line 166
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/wifi/intelligence/ins/util/InsDataJson;->updateJson(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 171
    .line 172
    .line 173
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$FlushDataTask;->writer:Ljava/io/FileWriter;

    .line 174
    .line 175
    invoke-virtual {p0}, Ljava/io/FileWriter;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :catch_2
    move-exception p0

    .line 180
    :try_start_4
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string v2, "Flushing data to csv err: "

    .line 191
    .line 192
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    :cond_4
    :goto_3
    return-void
.end method
