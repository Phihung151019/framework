.class Lorg/apache/commons/logging/impl/WeakHashtable$1;
.super Ljava/lang/Object;
.source "WeakHashtable.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/logging/impl/WeakHashtable;->keys()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$enumer:Ljava/util/Enumeration;


# direct methods
.method constructor <init>(Lorg/apache/commons/logging/impl/WeakHashtable;Ljava/util/Enumeration;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/commons/logging/impl/WeakHashtable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 193
    iput-object p2, p0, Lorg/apache/commons/logging/impl/WeakHashtable$1;->val$enumer:Ljava/util/Enumeration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$1;->val$enumer:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 2

    .line 198
    iget-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$1;->val$enumer:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    .line 199
    .local v0, "nextReference":Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    invoke-static {v0}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->-$$Nest$mgetValue(Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
