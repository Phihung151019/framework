.class public Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
.super Ljava/lang/Object;
.source "Vertex.java"


# instance fields
.field private final circles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Circle;",
            ">;"
        }
    .end annotation
.end field

.field private incoming:Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

.field private final location:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

.field private outgoing:Lorg/apache/commons/math3/geometry/spherical/twod/Edge;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)V
    .locals 1
    .param p1, "location"    # Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->location:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->incoming:Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    .line 47
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->outgoing:Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->circles:Ljava/util/List;

    .line 49
    return-void
.end method


# virtual methods
.method bindWith(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V
    .locals 1
    .param p1, "circle"    # Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .line 62
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->circles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public getIncoming()Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->incoming:Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    return-object v0
.end method

.method public getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->location:Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    return-object v0
.end method

.method public getOutgoing()Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->outgoing:Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    return-object v0
.end method

.method setIncoming(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)V
    .locals 1
    .param p1, "incoming"    # Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    .line 94
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->incoming:Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    .line 95
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getCircle()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->bindWith(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    .line 96
    return-void
.end method

.method setOutgoing(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)V
    .locals 1
    .param p1, "outgoing"    # Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    .line 113
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->outgoing:Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    .line 114
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getCircle()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->bindWith(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    .line 115
    return-void
.end method

.method sharedCircleWith(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;)Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    .locals 4
    .param p1, "vertex"    # Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    .line 76
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->circles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .line 77
    .local v1, "circle1":Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    iget-object v2, p1, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->circles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .line 78
    .local v3, "circle2":Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    if-ne v1, v3, :cond_0

    .line 79
    return-object v1

    .line 81
    .end local v3    # "circle2":Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    :cond_0
    goto :goto_1

    .line 82
    .end local v1    # "circle1":Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    goto :goto_0

    .line 83
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
