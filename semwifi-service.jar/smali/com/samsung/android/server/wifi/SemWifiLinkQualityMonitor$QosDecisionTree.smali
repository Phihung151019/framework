.class Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QosDecisionTree"
.end annotation


# instance fields
.field private root:Lorg/w3c/dom/Element;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;


# direct methods
.method static bridge synthetic -$$Nest$minitializeVariables(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;->initializeVariables()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V

    return-void
.end method

.method private evaluateNode(Lorg/w3c/dom/Element;Ljava/util/HashMap;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "variable"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "operator"

    .line 8
    .line 9
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "value"

    .line 14
    .line 15
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {p2, v0, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/Float;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 39
    .line 40
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 48
    .line 49
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const-string v5, " : "

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 59
    .line 60
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v5, "%.2f"

    .line 69
    .line 70
    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string v4, " / "

    .line 84
    .line 85
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    const/4 v0, 0x1

    .line 92
    const/4 v4, 0x0

    .line 93
    const/4 v5, -0x1

    .line 94
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    sparse-switch v6, :sswitch_data_0

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :sswitch_0
    const-string v6, "lt"

    .line 103
    .line 104
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_0

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_0
    const/4 v5, 0x2

    .line 112
    goto :goto_0

    .line 113
    :sswitch_1
    const-string v6, "gt"

    .line 114
    .line 115
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_1
    move v5, v0

    .line 123
    goto :goto_0

    .line 124
    :sswitch_2
    const-string v6, "eq"

    .line 125
    .line 126
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-nez v1, :cond_2

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_2
    move v5, v4

    .line 134
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 135
    .line 136
    .line 137
    :cond_3
    move v1, v4

    .line 138
    goto :goto_2

    .line 139
    :pswitch_0
    cmpg-float v1, v3, v2

    .line 140
    .line 141
    if-gez v1, :cond_3

    .line 142
    .line 143
    :goto_1
    move v1, v0

    .line 144
    goto :goto_2

    .line 145
    :pswitch_1
    cmpl-float v1, v3, v2

    .line 146
    .line 147
    if-lez v1, :cond_3

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :pswitch_2
    cmpl-float v1, v3, v2

    .line 151
    .line 152
    if-nez v1, :cond_3

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :goto_2
    const/4 v2, 0x0

    .line 156
    move-object v3, v2

    .line 157
    :goto_3
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    if-ge v4, v5, :cond_6

    .line 166
    .line 167
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-interface {v5, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    if-ne v5, v0, :cond_5

    .line 180
    .line 181
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    invoke-interface {v5, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    const-string v6, "trueBranch"

    .line 194
    .line 195
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    if-eqz v5, :cond_4

    .line 200
    .line 201
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    check-cast v3, Lorg/w3c/dom/Element;

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_4
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    invoke-interface {v5, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    const-string v6, "falseBranch"

    .line 225
    .line 226
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    if-eqz v5, :cond_5

    .line 231
    .line 232
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    check-cast v2, Lorg/w3c/dom/Element;

    .line 241
    .line 242
    :cond_5
    :goto_4
    add-int/2addr v4, v0

    .line 243
    goto :goto_3

    .line 244
    :cond_6
    const-string p1, "node"

    .line 245
    .line 246
    const-string v0, "type"

    .line 247
    .line 248
    const-string v4, "Branch cannot be null"

    .line 249
    .line 250
    if-eqz v1, :cond_9

    .line 251
    .line 252
    if-eqz v3, :cond_8

    .line 253
    .line 254
    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    if-eqz p1, :cond_7

    .line 263
    .line 264
    invoke-direct {p0, v3, p2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;->evaluateNode(Lorg/w3c/dom/Element;Ljava/util/HashMap;)Z

    .line 265
    .line 266
    .line 267
    move-result p0

    .line 268
    return p0

    .line 269
    :cond_7
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;->executeAction(Lorg/w3c/dom/Element;)Z

    .line 270
    .line 271
    .line 272
    move-result p0

    .line 273
    return p0

    .line 274
    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    .line 275
    .line 276
    invoke-direct {p0, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    throw p0

    .line 280
    :cond_9
    if-eqz v2, :cond_b

    .line 281
    .line 282
    invoke-interface {v2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    if-eqz p1, :cond_a

    .line 291
    .line 292
    invoke-direct {p0, v2, p2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;->evaluateNode(Lorg/w3c/dom/Element;Ljava/util/HashMap;)Z

    .line 293
    .line 294
    .line 295
    move-result p0

    .line 296
    return p0

    .line 297
    :cond_a
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;->executeAction(Lorg/w3c/dom/Element;)Z

    .line 298
    .line 299
    .line 300
    move-result p0

    .line 301
    return p0

    .line 302
    :cond_b
    new-instance p0, Ljava/lang/AssertionError;

    .line 303
    .line 304
    invoke-direct {p0, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    throw p0

    .line 308
    nop

    .line 309
    :sswitch_data_0
    .sparse-switch
        0xcac -> :sswitch_2
        0xced -> :sswitch_1
        0xd88 -> :sswitch_0
    .end sparse-switch

    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private executeAction(Lorg/w3c/dom/Element;)Z
    .locals 0

    .line 1
    const-string p0, "quality"

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string p1, "good"

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private initializeVariables()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/io/File;

    .line 10
    .line 11
    const-string v2, "/system/etc/decision_tree.xml"

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1}, Lorg/w3c/dom/Element;->normalize()V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;->root:Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v3, "Exception in initializeVariables "

    .line 40
    .line 41
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/4 v2, 0x1

    .line 52
    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;->root:Lorg/w3c/dom/Element;

    .line 57
    .line 58
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;->root:Lorg/w3c/dom/Element;

    .line 59
    .line 60
    const-string v1, "SemWifiLinkQualityMonitor"

    .line 61
    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v2, "root initialize complete, variable="

    .line 67
    .line 68
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;->root:Lorg/w3c/dom/Element;

    .line 72
    .line 73
    const-string v3, "variable"

    .line 74
    .line 75
    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v2, ", value="

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;->root:Lorg/w3c/dom/Element;

    .line 88
    .line 89
    const-string v3, "value"

    .line 90
    .line 91
    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 106
    .line 107
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;->root:Lorg/w3c/dom/Element;

    .line 108
    .line 109
    invoke-interface {p0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    float-to-int p0, p0

    .line 118
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputmLinkSpeedBoundMbps(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_0
    const-string v0, "root is null! Link speed bound set to 108 Mbps"

    .line 123
    .line 124
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 128
    .line 129
    const/16 v0, 0x6c

    .line 130
    .line 131
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputmLinkSpeedBoundMbps(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    .line 132
    .line 133
    .line 134
    :goto_1
    return-void
.end method


# virtual methods
.method public evaluateLinkQoS(Ljava/util/HashMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/AssertionError;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;->root:Lorg/w3c/dom/Element;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;->evaluateNode(Lorg/w3c/dom/Element;Ljava/util/HashMap;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 11
    .line 12
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmQosStateMachine(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return p0
.end method
