.class public Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;
.super Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;
.source "SingleClientConnManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/conn/SingleClientConnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConnAdapter"
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/http/impl/conn/SingleClientConnManager;Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/http/impl/conn/SingleClientConnManager;
    .param p2, "entry"    # Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;
    .param p3, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 464
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/impl/conn/AbstractPoolEntry;)V

    .line 465
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->markReusable()V

    .line 466
    iput-object p3, p2, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->route:Lorg/apache/http/conn/routing/HttpRoute;

    .line 467
    return-void
.end method
