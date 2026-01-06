.class Lcom/qti/tcmclient/DpmTcmClient$TcmReceiver;
.super Ljava/lang/Object;
.source "DpmTcmClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/tcmclient/DpmTcmClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TcmReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/tcmclient/DpmTcmClient;


# direct methods
.method constructor <init>(Lcom/qti/tcmclient/DpmTcmClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qti/tcmclient/DpmTcmClient;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/qti/tcmclient/DpmTcmClient$TcmReceiver;->this$0:Lcom/qti/tcmclient/DpmTcmClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 115
    const/4 v0, 0x0

    .line 117
    .local v0, "s":Landroid/net/LocalSocket;
    const/4 v1, 0x0

    .line 122
    .local v1, "retryCount":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/qti/tcmclient/DpmTcmClient$TcmReceiver;->this$0:Lcom/qti/tcmclient/DpmTcmClient;

    const-string v3, "persist.vendor.dpm.tcm"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/qti/tcmclient/DpmTcmClient;->-$$Nest$fputtcmRuntimeFeature(Lcom/qti/tcmclient/DpmTcmClient;I)V

    .line 123
    iget-object v2, p0, Lcom/qti/tcmclient/DpmTcmClient$TcmReceiver;->this$0:Lcom/qti/tcmclient/DpmTcmClient;

    invoke-static {v2}, Lcom/qti/tcmclient/DpmTcmClient;->-$$Nest$fgettcmRuntimeFeature(Lcom/qti/tcmclient/DpmTcmClient;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 124
    nop

    .line 222
    goto/16 :goto_a

    .line 127
    :cond_0
    :try_start_1
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    move-object v0, v2

    .line 128
    new-instance v2, Landroid/net/LocalSocketAddress;

    sget-object v4, Lcom/qti/tcmclient/DpmTcmClient;->SOCKET_NAME_TCM:Ljava/lang/String;

    sget-object v5, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v4, v5}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 130
    .local v2, "l":Landroid/net/LocalSocketAddress;
    invoke-virtual {v0, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 131
    invoke-static {}, Lcom/qti/tcmclient/DpmTcmClient;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "DpmTcmClient"

    const-string v5, "connected to TCM"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 157
    :cond_1
    nop

    .line 158
    const/4 v1, 0x0

    .line 163
    :goto_1
    const/16 v4, 0xa

    :try_start_2
    new-array v4, v4, [B

    .line 167
    .local v4, "buf":[B
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const/16 v6, 0x9

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 168
    .local v5, "countRead":I
    if-lez v5, :cond_9

    .line 169
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v4}, Ljava/lang/String;-><init>([B)V

    .line 170
    .local v8, "str":Ljava/lang/String;
    const-string v9, "closeConn"

    invoke-virtual {v8, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 171
    invoke-static {}, Lcom/qti/tcmclient/DpmTcmClient;->-$$Nest$sfgetDEBUG()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "DpmTcmClient"

    const-string v7, "received closeconn"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_2
    iget-object v6, p0, Lcom/qti/tcmclient/DpmTcmClient$TcmReceiver;->this$0:Lcom/qti/tcmclient/DpmTcmClient;

    invoke-static {v6}, Lcom/qti/tcmclient/DpmTcmClient;->-$$Nest$fgetmTcmIfaces(Lcom/qti/tcmclient/DpmTcmClient;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 173
    :try_start_3
    iget-object v7, p0, Lcom/qti/tcmclient/DpmTcmClient$TcmReceiver;->this$0:Lcom/qti/tcmclient/DpmTcmClient;

    invoke-static {v7}, Lcom/qti/tcmclient/DpmTcmClient;->-$$Nest$fgetmTcmIfaces(Lcom/qti/tcmclient/DpmTcmClient;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 174
    .local v7, "mTcmIfaceSize":I
    invoke-static {}, Lcom/qti/tcmclient/DpmTcmClient;->-$$Nest$sfgetDEBUG()Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "DpmTcmClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mTcmIfaceSize "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 176
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v7, :cond_8

    .line 178
    :try_start_4
    iget-object v9, p0, Lcom/qti/tcmclient/DpmTcmClient$TcmReceiver;->this$0:Lcom/qti/tcmclient/DpmTcmClient;

    invoke-static {v9}, Lcom/qti/tcmclient/DpmTcmClient;->-$$Nest$fgetmTcmIfaces(Lcom/qti/tcmclient/DpmTcmClient;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/quicinc/tcmiface/DpmTcmIface;

    .line 179
    .local v9, "iface":Lcom/quicinc/tcmiface/DpmTcmIface;
    if-nez v9, :cond_6

    .line 180
    iget-object v10, p0, Lcom/qti/tcmclient/DpmTcmClient$TcmReceiver;->this$0:Lcom/qti/tcmclient/DpmTcmClient;

    invoke-static {v10}, Lcom/qti/tcmclient/DpmTcmClient;->-$$Nest$fgetmTcmIfaces(Lcom/qti/tcmclient/DpmTcmClient;)Ljava/util/ArrayList;

    move-result-object v10

    monitor-enter v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 181
    :try_start_5
    iget-object v11, p0, Lcom/qti/tcmclient/DpmTcmClient$TcmReceiver;->this$0:Lcom/qti/tcmclient/DpmTcmClient;

    invoke-static {v11}, Lcom/qti/tcmclient/DpmTcmClient;->-$$Nest$fgetmTcmIfaces(Lcom/qti/tcmclient/DpmTcmClient;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 182
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 183
    add-int/lit8 v6, v6, -0x1

    .line 184
    add-int/lit8 v7, v7, -0x1

    .line 185
    :try_start_6
    invoke-static {}, Lcom/qti/tcmclient/DpmTcmClient;->-$$Nest$sfgetDEBUG()Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "DpmTcmClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mTcmIfaceSize After Removing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 186
    :cond_4
    if-nez v7, :cond_7

    .line 188
    nop

    .line 189
    :try_start_7
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 193
    goto :goto_3

    .line 191
    :catch_0
    move-exception v3

    .line 194
    :goto_3
    :try_start_8
    invoke-static {}, Lcom/qti/tcmclient/DpmTcmClient;->-$$Nest$sfgetDEBUG()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "DpmTcmClient"

    const-string v10, "Thread exit"

    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 195
    :cond_5
    return-void

    .line 182
    :catchall_0
    move-exception v3

    :try_start_9
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .end local v0    # "s":Landroid/net/LocalSocket;
    .end local v1    # "retryCount":I
    .end local v2    # "l":Landroid/net/LocalSocketAddress;
    .end local p0    # "this":Lcom/qti/tcmclient/DpmTcmClient$TcmReceiver;
    :try_start_a
    throw v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 200
    .restart local v0    # "s":Landroid/net/LocalSocket;
    .restart local v1    # "retryCount":I
    .restart local v2    # "l":Landroid/net/LocalSocketAddress;
    .restart local p0    # "this":Lcom/qti/tcmclient/DpmTcmClient$TcmReceiver;
    :cond_6
    :try_start_b
    invoke-interface {v9}, Lcom/quicinc/tcmiface/DpmTcmIface;->OnCloseIdleConn()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 202
    goto :goto_4

    .line 201
    :catch_1
    move-exception v10

    .line 176
    .end local v9    # "iface":Lcom/quicinc/tcmiface/DpmTcmIface;
    :cond_7
    :goto_4
    add-int/2addr v6, v3

    goto :goto_2

    .line 175
    .end local v6    # "i":I
    .end local v7    # "mTcmIfaceSize":I
    :catchall_1
    move-exception v3

    :try_start_c
    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .end local v0    # "s":Landroid/net/LocalSocket;
    .end local v1    # "retryCount":I
    .end local v2    # "l":Landroid/net/LocalSocketAddress;
    .end local p0    # "this":Lcom/qti/tcmclient/DpmTcmClient$TcmReceiver;
    :try_start_d
    throw v3

    .line 205
    .end local v8    # "str":Ljava/lang/String;
    .restart local v0    # "s":Landroid/net/LocalSocket;
    .restart local v1    # "retryCount":I
    .restart local v2    # "l":Landroid/net/LocalSocketAddress;
    .restart local p0    # "this":Lcom/qti/tcmclient/DpmTcmClient$TcmReceiver;
    :cond_8
    nop

    .line 209
    .end local v4    # "buf":[B
    .end local v5    # "countRead":I
    goto/16 :goto_1

    .line 206
    .restart local v4    # "buf":[B
    .restart local v5    # "countRead":I
    :cond_9
    const-string v3, "DpmTcmClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read failed bytes countRead: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 207
    nop

    .line 212
    .end local v4    # "buf":[B
    .end local v5    # "countRead":I
    goto :goto_5

    .line 210
    :catch_2
    move-exception v3

    .line 211
    .local v3, "ex5":Ljava/lang/Exception;
    :try_start_e
    const-string v4, "DpmTcmClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read fail with an exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 214
    .end local v3    # "ex5":Ljava/lang/Exception;
    :goto_5
    nop

    .line 215
    :try_start_f
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 218
    :goto_6
    goto/16 :goto_0

    .line 217
    :catch_3
    move-exception v3

    goto :goto_6

    .line 132
    .end local v2    # "l":Landroid/net/LocalSocketAddress;
    :catch_4
    move-exception v2

    .line 134
    .local v2, "ex":Ljava/io/IOException;
    if-eqz v0, :cond_a

    .line 135
    :try_start_10
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_7

    .line 137
    :catch_5
    move-exception v3

    goto :goto_8

    .line 139
    :cond_a
    :goto_7
    nop

    .line 142
    :goto_8
    const-wide/16 v3, 0x3e8

    :try_start_11
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 145
    goto :goto_9

    .line 143
    :catch_6
    move-exception v3

    .line 144
    .local v3, "ex2":Ljava/lang/InterruptedException;
    :try_start_12
    const-string v4, "DpmTcmClient"

    const-string v5, "tcm socket open retry timer was interrupted"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .end local v3    # "ex2":Ljava/lang/InterruptedException;
    :goto_9
    add-int/lit8 v1, v1, 0x1

    .line 148
    const/16 v3, 0x78

    if-ne v1, v3, :cond_b

    .line 151
    const-string v3, "DpmTcmClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t find \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/qti/tcmclient/DpmTcmClient;->SOCKET_NAME_TCM:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' socket after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "times. quit trying"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 153
    return-void

    .line 156
    :cond_b
    goto/16 :goto_0

    .line 220
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_2
    move-exception v2

    .line 221
    .local v2, "tr":Ljava/lang/Throwable;
    const-string v3, "DpmTcmClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uncaught exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .end local v2    # "tr":Ljava/lang/Throwable;
    :goto_a
    invoke-static {}, Lcom/qti/tcmclient/DpmTcmClient;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "DpmTcmClient"

    const-string v3, "Thread exit"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_c
    iget-object v2, p0, Lcom/qti/tcmclient/DpmTcmClient$TcmReceiver;->this$0:Lcom/qti/tcmclient/DpmTcmClient;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/qti/tcmclient/DpmTcmClient;->-$$Nest$fputmReceiver(Lcom/qti/tcmclient/DpmTcmClient;Lcom/qti/tcmclient/DpmTcmClient$TcmReceiver;)V

    .line 225
    return-void
.end method
