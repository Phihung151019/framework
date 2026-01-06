.class final enum Lorg/apache/commons/math3/ode/events/FilterType$1;
.super Lorg/apache/commons/math3/ode/events/FilterType;
.source "FilterType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ode/events/FilterType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/ode/events/FilterType;-><init>(Ljava/lang/String;ILorg/apache/commons/math3/ode/events/FilterType$1;)V

    return-void
.end method


# virtual methods
.method protected getTriggeredIncreasing()Z
    .locals 1

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method protected selectTransformer(Lorg/apache/commons/math3/ode/events/Transformer;DZ)Lorg/apache/commons/math3/ode/events/Transformer;
    .locals 4
    .param p1, "previous"    # Lorg/apache/commons/math3/ode/events/Transformer;
    .param p2, "g"    # D
    .param p4, "forward"    # Z

    .line 92
    const-wide/16 v0, 0x0

    if-eqz p4, :cond_6

    .line 93
    sget-object v2, Lorg/apache/commons/math3/ode/events/FilterType$3;->$SwitchMap$org$apache$commons$math3$ode$events$Transformer:[I

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/events/Transformer;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 145
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v0

    .line 135
    :pswitch_0
    cmpg-double v0, p2, v0

    if-gtz v0, :cond_0

    .line 138
    sget-object v0, Lorg/apache/commons/math3/ode/events/Transformer;->PLUS:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object v0

    .line 141
    :cond_0
    return-object p1

    .line 126
    :pswitch_1
    cmpg-double v0, p2, v0

    if-gtz v0, :cond_1

    .line 129
    sget-object v0, Lorg/apache/commons/math3/ode/events/Transformer;->MINUS:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object v0

    .line 132
    :cond_1
    return-object p1

    .line 117
    :pswitch_2
    cmpl-double v0, p2, v0

    if-ltz v0, :cond_2

    .line 120
    sget-object v0, Lorg/apache/commons/math3/ode/events/Transformer;->MAX:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object v0

    .line 123
    :cond_2
    return-object p1

    .line 108
    :pswitch_3
    cmpl-double v0, p2, v0

    if-ltz v0, :cond_3

    .line 111
    sget-object v0, Lorg/apache/commons/math3/ode/events/Transformer;->MIN:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object v0

    .line 114
    :cond_3
    return-object p1

    .line 96
    :pswitch_4
    cmpl-double v2, p2, v0

    if-lez v2, :cond_4

    .line 98
    sget-object v0, Lorg/apache/commons/math3/ode/events/Transformer;->MAX:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object v0

    .line 99
    :cond_4
    cmpg-double v0, p2, v0

    if-gez v0, :cond_5

    .line 101
    sget-object v0, Lorg/apache/commons/math3/ode/events/Transformer;->PLUS:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object v0

    .line 105
    :cond_5
    sget-object v0, Lorg/apache/commons/math3/ode/events/Transformer;->UNINITIALIZED:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object v0

    .line 148
    :cond_6
    sget-object v2, Lorg/apache/commons/math3/ode/events/FilterType$3;->$SwitchMap$org$apache$commons$math3$ode$events$Transformer:[I

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/events/Transformer;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 200
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v0

    .line 190
    :pswitch_5
    cmpl-double v0, p2, v0

    if-ltz v0, :cond_7

    .line 193
    sget-object v0, Lorg/apache/commons/math3/ode/events/Transformer;->MINUS:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object v0

    .line 196
    :cond_7
    return-object p1

    .line 181
    :pswitch_6
    cmpl-double v0, p2, v0

    if-ltz v0, :cond_8

    .line 184
    sget-object v0, Lorg/apache/commons/math3/ode/events/Transformer;->PLUS:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object v0

    .line 187
    :cond_8
    return-object p1

    .line 172
    :pswitch_7
    cmpg-double v0, p2, v0

    if-gtz v0, :cond_9

    .line 175
    sget-object v0, Lorg/apache/commons/math3/ode/events/Transformer;->MIN:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object v0

    .line 178
    :cond_9
    return-object p1

    .line 163
    :pswitch_8
    cmpg-double v0, p2, v0

    if-gtz v0, :cond_a

    .line 166
    sget-object v0, Lorg/apache/commons/math3/ode/events/Transformer;->MAX:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object v0

    .line 169
    :cond_a
    return-object p1

    .line 151
    :pswitch_9
    cmpl-double v2, p2, v0

    if-lez v2, :cond_b

    .line 153
    sget-object v0, Lorg/apache/commons/math3/ode/events/Transformer;->MINUS:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object v0

    .line 154
    :cond_b
    cmpg-double v0, p2, v0

    if-gez v0, :cond_c

    .line 156
    sget-object v0, Lorg/apache/commons/math3/ode/events/Transformer;->MIN:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object v0

    .line 160
    :cond_c
    sget-object v0, Lorg/apache/commons/math3/ode/events/Transformer;->UNINITIALIZED:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
