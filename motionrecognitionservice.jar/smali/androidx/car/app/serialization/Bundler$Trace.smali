.class Landroidx/car/app/serialization/Bundler$Trace;
.super Ljava/lang/Object;
.source "Bundler.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/serialization/Bundler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Trace"
.end annotation


# static fields
.field private static final MAX_FLAT_FRAMES:I = 0x8

.field private static final MAX_LOG_INDENT:I = 0xc


# instance fields
.field private final mFrames:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/car/app/serialization/Bundler$Frame;",
            ">;"
        }
    .end annotation
.end field

.field private mIndents:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/util/ArrayDeque;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "display"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayDeque<",
            "Landroidx/car/app/serialization/Bundler$Frame;",
            ">;)V"
        }
    .end annotation

    .line 839
    .local p3, "frames":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroidx/car/app/serialization/Bundler$Frame;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 840
    iput-object p3, p0, Landroidx/car/app/serialization/Bundler$Trace;->mFrames:Ljava/util/ArrayDeque;

    .line 841
    if-eqz p1, :cond_0

    .line 842
    new-instance v0, Landroidx/car/app/serialization/Bundler$Frame;

    invoke-direct {v0, p1, p2}, Landroidx/car/app/serialization/Bundler$Frame;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 843
    .local v0, "frame":Landroidx/car/app/serialization/Bundler$Frame;
    invoke-virtual {p3, v0}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 844
    const/4 v1, 0x2

    const-string v2, "CarApp.Bun"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 845
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    invoke-direct {p0, v3}, Landroidx/car/app/serialization/Bundler$Trace;->getIndent(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/car/app/serialization/Bundler$Frame;->toTraceString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    .end local v0    # "frame":Landroidx/car/app/serialization/Bundler$Frame;
    :cond_0
    return-void
.end method

.method static bundleToString(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 779
    const-string v0, "tag_class_type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 780
    .local v0, "classType":I
    invoke-static {v0}, Landroidx/car/app/serialization/Bundler;->getBundledTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 785
    .local v1, "s":Ljava/lang/String;
    return-object v1
.end method

.method static create()Landroidx/car/app/serialization/Bundler$Trace;
    .locals 4

    .line 770
    new-instance v0, Landroidx/car/app/serialization/Bundler$Trace;

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v2, v3, v1}, Landroidx/car/app/serialization/Bundler$Trace;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/util/ArrayDeque;)V

    return-object v0
.end method

.method static fromParent(Ljava/lang/Object;Ljava/lang/String;Landroidx/car/app/serialization/Bundler$Trace;)Landroidx/car/app/serialization/Bundler$Trace;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "display"    # Ljava/lang/String;
    .param p2, "parent"    # Landroidx/car/app/serialization/Bundler$Trace;

    .line 774
    new-instance v0, Landroidx/car/app/serialization/Bundler$Trace;

    iget-object v1, p2, Landroidx/car/app/serialization/Bundler$Trace;->mFrames:Ljava/util/ArrayDeque;

    invoke-direct {v0, p0, p1, v1}, Landroidx/car/app/serialization/Bundler$Trace;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/util/ArrayDeque;)V

    return-object v0
.end method

.method private getIndent(I)Ljava/lang/String;
    .locals 3
    .param p1, "level"    # I

    .line 817
    const/16 v0, 0xb

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 818
    iget-object v1, p0, Landroidx/car/app/serialization/Bundler$Trace;->mIndents:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 819
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroidx/car/app/serialization/Bundler$Trace;->mIndents:[Ljava/lang/String;

    .line 821
    :cond_0
    iget-object v1, p0, Landroidx/car/app/serialization/Bundler$Trace;->mIndents:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 822
    .local v1, "indent":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 823
    const/16 v2, 0x20

    invoke-static {v2, p1}, Landroidx/car/app/serialization/Bundler$Trace;->repeatChar(CI)Ljava/lang/String;

    move-result-object v1

    .line 824
    if-ne p1, v0, :cond_1

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 827
    :cond_1
    iget-object v0, p0, Landroidx/car/app/serialization/Bundler$Trace;->mIndents:[Ljava/lang/String;

    aput-object v1, v0, p1

    .line 829
    :cond_2
    return-object v1
.end method

.method private static repeatChar(CI)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # C
    .param p1, "length"    # I

    .line 833
    new-array v0, p1, [C

    .line 834
    .local v0, "chars":[C
    invoke-static {v0, p0}, Ljava/util/Arrays;->fill([CC)V

    .line 835
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 790
    iget-object v0, p0, Landroidx/car/app/serialization/Bundler$Trace;->mFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 791
    return-void
.end method

.method find(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 794
    iget-object v0, p0, Landroidx/car/app/serialization/Bundler$Trace;->mFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/serialization/Bundler$Frame;

    .line 795
    .local v1, "frame":Landroidx/car/app/serialization/Bundler$Frame;
    invoke-virtual {v1}, Landroidx/car/app/serialization/Bundler$Frame;->getObj()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 796
    const/4 v0, 0x1

    return v0

    .line 798
    .end local v1    # "frame":Landroidx/car/app/serialization/Bundler$Frame;
    :cond_0
    goto :goto_0

    .line 799
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method toFlatString()Ljava/lang/String;
    .locals 4

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 805
    .local v0, "s":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/car/app/serialization/Bundler$Trace;->mFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 806
    .local v1, "count":I
    iget-object v2, p0, Landroidx/car/app/serialization/Bundler$Trace;->mFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 807
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/car/app/serialization/Bundler$Frame;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v1, -0x1

    .end local v1    # "count":I
    .local v3, "count":I
    if-lez v1, :cond_0

    .line 808
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/serialization/Bundler$Frame;

    invoke-virtual {v1}, Landroidx/car/app/serialization/Bundler$Frame;->toFlatString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_0

    .line 807
    :cond_0
    move v1, v3

    .line 810
    .end local v3    # "count":I
    .restart local v1    # "count":I
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 811
    const-string v3, "[...]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
