.class Lcom/samsung/sdk/sperf/SessionControl$1;
.super Ljava/lang/Object;
.source "SessionControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sdk/sperf/SessionControl;->createServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sdk/sperf/SessionControl;


# direct methods
.method constructor <init>(Lcom/samsung/sdk/sperf/SessionControl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/sdk/sperf/SessionControl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/samsung/sdk/sperf/SessionControl$1;->this$0:Lcom/samsung/sdk/sperf/SessionControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/samsung/sdk/sperf/SessionControl$1;->this$0:Lcom/samsung/sdk/sperf/SessionControl;

    new-instance v1, Landroid/net/LocalServerSocket;

    iget-object v2, p0, Lcom/samsung/sdk/sperf/SessionControl$1;->this$0:Lcom/samsung/sdk/sperf/SessionControl;

    invoke-static {v2}, Lcom/samsung/sdk/sperf/SessionControl;->-$$Nest$fgetsocketName(Lcom/samsung/sdk/sperf/SessionControl;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/samsung/sdk/sperf/SessionControl;->-$$Nest$fputserver(Lcom/samsung/sdk/sperf/SessionControl;Landroid/net/LocalServerSocket;)V

    .line 132
    iget-object v0, p0, Lcom/samsung/sdk/sperf/SessionControl$1;->this$0:Lcom/samsung/sdk/sperf/SessionControl;

    iget-object v1, p0, Lcom/samsung/sdk/sperf/SessionControl$1;->this$0:Lcom/samsung/sdk/sperf/SessionControl;

    invoke-static {v1}, Lcom/samsung/sdk/sperf/SessionControl;->-$$Nest$fgetserver(Lcom/samsung/sdk/sperf/SessionControl;)Landroid/net/LocalServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/sdk/sperf/SessionControl;->-$$Nest$fputclient(Lcom/samsung/sdk/sperf/SessionControl;Landroid/net/LocalSocket;)V

    .line 134
    iget-object v0, p0, Lcom/samsung/sdk/sperf/SessionControl$1;->this$0:Lcom/samsung/sdk/sperf/SessionControl;

    new-instance v1, Ljava/io/DataInputStream;

    iget-object v2, p0, Lcom/samsung/sdk/sperf/SessionControl$1;->this$0:Lcom/samsung/sdk/sperf/SessionControl;

    invoke-static {v2}, Lcom/samsung/sdk/sperf/SessionControl;->-$$Nest$fgetclient(Lcom/samsung/sdk/sperf/SessionControl;)Landroid/net/LocalSocket;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, v1}, Lcom/samsung/sdk/sperf/SessionControl;->-$$Nest$fputin(Lcom/samsung/sdk/sperf/SessionControl;Ljava/io/DataInputStream;)V

    .line 135
    iget-object v0, p0, Lcom/samsung/sdk/sperf/SessionControl$1;->this$0:Lcom/samsung/sdk/sperf/SessionControl;

    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcom/samsung/sdk/sperf/SessionControl$1;->this$0:Lcom/samsung/sdk/sperf/SessionControl;

    invoke-static {v2}, Lcom/samsung/sdk/sperf/SessionControl;->-$$Nest$fgetclient(Lcom/samsung/sdk/sperf/SessionControl;)Landroid/net/LocalSocket;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0, v1}, Lcom/samsung/sdk/sperf/SessionControl;->-$$Nest$fputout(Lcom/samsung/sdk/sperf/SessionControl;Ljava/io/DataOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 140
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/sdk/sperf/SessionControl$1;->this$0:Lcom/samsung/sdk/sperf/SessionControl;

    invoke-static {v2}, Lcom/samsung/sdk/sperf/SessionControl;->-$$Nest$fgetserver(Lcom/samsung/sdk/sperf/SessionControl;)Landroid/net/LocalServerSocket;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V

    .line 141
    iget-object v2, p0, Lcom/samsung/sdk/sperf/SessionControl$1;->this$0:Lcom/samsung/sdk/sperf/SessionControl;

    invoke-static {v2, v1}, Lcom/samsung/sdk/sperf/SessionControl;->-$$Nest$fputserver(Lcom/samsung/sdk/sperf/SessionControl;Landroid/net/LocalServerSocket;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    goto :goto_0

    .line 142
    :catch_1
    move-exception v2

    .line 143
    .local v2, "e1":Ljava/io/IOException;
    iget-object v3, p0, Lcom/samsung/sdk/sperf/SessionControl$1;->this$0:Lcom/samsung/sdk/sperf/SessionControl;

    invoke-static {v3, v1}, Lcom/samsung/sdk/sperf/SessionControl;->-$$Nest$fputserver(Lcom/samsung/sdk/sperf/SessionControl;Landroid/net/LocalServerSocket;)V

    .line 146
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "e1":Ljava/io/IOException;
    :goto_0
    return-void
.end method
