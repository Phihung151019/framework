.class Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XmlHandler"
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final DEBUG:Z = true

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.server.wifi"

.field private static final TAG:Ljava/lang/String; = "SemWifi.ScpmXml"

.field private static final WIFI_GROUP_NAME:Ljava/lang/String; = "WIFI"

.field private static final XML_TAG_BOOLEAN:Ljava/lang/String; = "boolean"

.field private static final XML_TAG_FLOAT:Ljava/lang/String; = "float"

.field private static final XML_TAG_INT:Ljava/lang/String; = "int"

.field private static final XML_TAG_LONG:Ljava/lang/String; = "long"

.field private static final XML_TAG_SCPM_GROUP:Ljava/lang/String; = "scpm-group"

.field private static final XML_TAG_SCPM_POLICY:Ljava/lang/String; = "scpm-policy"

.field private static final XML_TAG_START:Ljava/lang/String; = "wifi-framework-policy"

.field private static final XML_TAG_STRING:Ljava/lang/String; = "string"

.field private static final XML_TAG_WIFI_POLICY:Ljava/lang/String; = "wifi-policy"


# instance fields
.field private elementName:Ljava/lang/String;

.field private elementValue:Ljava/lang/StringBuilder;

.field private isActive:Z

.field private isOwnGroup:Z

.field private isOwnPolicy:Z

.field private lastCreatedPolicy:Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;

.field private final policies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private final scpmPolicyGroup:Ljava/lang/String;

.field private final scpmPolicyName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "WIFI"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->policies:Ljava/util/Set;

    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->scpmPolicyGroup:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->scpmPolicyName:Ljava/lang/String;

    return-void
.end method

.method private createPolicy(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "create wifiPolicy "

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SemWifi.ScpmXml"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy$Factory;->getInstance(Ljava/lang/String;)Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->lastCreatedPolicy:Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->policies:Ljava/util/Set;

    .line 19
    .line 20
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private getLastPolicy()Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->lastCreatedPolicy:Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;

    .line 2
    .line 3
    return-object p0
.end method

.method private hasElements()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementValue:Ljava/lang/StringBuilder;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method private setValue(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->isActive:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_0

    .line 6
    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->hasElements()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, " : "

    .line 12
    .line 13
    const-string v2, "SemWifi.ScpmXml"

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v0, "element is empty "

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementName:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementValue:Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->getLastPolicy()Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    const-string p0, "policy is empty"

    .line 52
    .line 53
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v4, "set "

    .line 60
    .line 61
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v4, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementName:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementValue:Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    instance-of v1, p1, Ljava/lang/Boolean;

    .line 85
    .line 86
    const-string v3, ":"

    .line 87
    .line 88
    const-string v4, "failed to parse "

    .line 89
    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementValue:Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    iget-object v1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementName:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;->setAttribute(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementName:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementValue:Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    goto/16 :goto_0

    .line 134
    .line 135
    :cond_3
    instance-of v1, p1, Ljava/lang/Integer;

    .line 136
    .line 137
    if-eqz v1, :cond_4

    .line 138
    .line 139
    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementValue:Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    iget-object v1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementName:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;->setAttribute(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementName:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementValue:Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_4
    instance-of v1, p1, Ljava/lang/Long;

    .line 182
    .line 183
    if-eqz v1, :cond_5

    .line 184
    .line 185
    :try_start_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementValue:Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 192
    .line 193
    .line 194
    move-result-wide v5

    .line 195
    iget-object p1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementName:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v0, p1, v5, v6}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;->setAttribute(Ljava/lang/String;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :catch_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementName:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementValue:Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    goto :goto_0

    .line 227
    :cond_5
    instance-of v1, p1, Ljava/lang/Float;

    .line 228
    .line 229
    if-eqz v1, :cond_6

    .line 230
    .line 231
    :try_start_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementValue:Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    iget-object v1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementName:Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;->setAttribute(Ljava/lang/String;F)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 244
    .line 245
    .line 246
    return-void

    .line 247
    :catch_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    iget-object v0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementName:Ljava/lang/String;

    .line 253
    .line 254
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementValue:Ljava/lang/StringBuilder;

    .line 261
    .line 262
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    :goto_0
    return-void

    .line 273
    :cond_6
    instance-of p1, p1, Ljava/lang/String;

    .line 274
    .line 275
    if-eqz p1, :cond_7

    .line 276
    .line 277
    iget-object p1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementName:Ljava/lang/String;

    .line 278
    .line 279
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementValue:Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    return-void

    .line 289
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 290
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    const-string v1, "unsupported tag "

    .line 294
    .line 295
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementName:Ljava/lang/String;

    .line 299
    .line 300
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p0

    .line 307
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    throw p1
.end method


# virtual methods
.method public characters([CII)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementValue:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    const/4 p2, -0x1

    .line 6
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sparse-switch v0, :sswitch_data_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :sswitch_0
    const-string v0, "scpm-group"

    .line 15
    .line 16
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    if-nez p3, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p2, 0x5

    .line 24
    goto :goto_0

    .line 25
    :sswitch_1
    const-string v0, "float"

    .line 26
    .line 27
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    if-nez p3, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p2, 0x4

    .line 35
    goto :goto_0

    .line 36
    :sswitch_2
    const-string v0, "boolean"

    .line 37
    .line 38
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    if-nez p3, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 p2, 0x3

    .line 46
    goto :goto_0

    .line 47
    :sswitch_3
    const-string v0, "long"

    .line 48
    .line 49
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    if-nez p3, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const/4 p2, 0x2

    .line 57
    goto :goto_0

    .line 58
    :sswitch_4
    const-string v0, "int"

    .line 59
    .line 60
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p3

    .line 64
    if-nez p3, :cond_4

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    const/4 p2, 0x1

    .line 68
    goto :goto_0

    .line 69
    :sswitch_5
    const-string v0, "string"

    .line 70
    .line 71
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p3

    .line 75
    if-nez p3, :cond_5

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_5
    move p2, p1

    .line 79
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :pswitch_0
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->isActive:Z

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :pswitch_1
    const/4 p1, 0x0

    .line 87
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->setValue(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :pswitch_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 96
    .line 97
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->setValue(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :pswitch_3
    const-wide/16 p1, 0x0

    .line 102
    .line 103
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->setValue(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :pswitch_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->setValue(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :pswitch_5
    const-string p1, ""

    .line 120
    .line 121
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->setValue(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    :goto_1
    const/4 p1, 0x0

    .line 125
    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementValue:Ljava/lang/StringBuilder;

    .line 126
    .line 127
    return-void

    .line 128
    nop

    .line 129
    :sswitch_data_0
    .sparse-switch
        -0x352a9fef -> :sswitch_5
        0x197ef -> :sswitch_4
        0x32c67c -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x5eaaa4ff -> :sswitch_0
    .end sparse-switch

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPolicies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->policies:Ljava/util/Set;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    const/4 p2, 0x1

    .line 6
    const-string v0, "name"

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sparse-switch v2, :sswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :sswitch_0
    const-string v2, "scpm-group"

    .line 19
    .line 20
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    if-nez p3, :cond_0

    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :cond_0
    const/16 v1, 0x8

    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :sswitch_1
    const-string v2, "wifi-framework-policy"

    .line 33
    .line 34
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    if-nez p3, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v1, 0x7

    .line 42
    goto :goto_0

    .line 43
    :sswitch_2
    const-string v2, "wifi-policy"

    .line 44
    .line 45
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    if-nez p3, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 v1, 0x6

    .line 53
    goto :goto_0

    .line 54
    :sswitch_3
    const-string v2, "float"

    .line 55
    .line 56
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    if-nez p3, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    const/4 v1, 0x5

    .line 64
    goto :goto_0

    .line 65
    :sswitch_4
    const-string v2, "boolean"

    .line 66
    .line 67
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    if-nez p3, :cond_4

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    const/4 v1, 0x4

    .line 75
    goto :goto_0

    .line 76
    :sswitch_5
    const-string v2, "long"

    .line 77
    .line 78
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p3

    .line 82
    if-nez p3, :cond_5

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_5
    const/4 v1, 0x3

    .line 86
    goto :goto_0

    .line 87
    :sswitch_6
    const-string v2, "int"

    .line 88
    .line 89
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p3

    .line 93
    if-nez p3, :cond_6

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_6
    const/4 v1, 0x2

    .line 97
    goto :goto_0

    .line 98
    :sswitch_7
    const-string v2, "string"

    .line 99
    .line 100
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p3

    .line 104
    if-nez p3, :cond_7

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_7
    move v1, p2

    .line 108
    goto :goto_0

    .line 109
    :sswitch_8
    const-string v2, "scpm-policy"

    .line 110
    .line 111
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result p3

    .line 115
    if-nez p3, :cond_8

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_8
    move v1, p1

    .line 119
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :pswitch_0
    iget-boolean p3, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->isOwnPolicy:Z

    .line 124
    .line 125
    if-eqz p3, :cond_9

    .line 126
    .line 127
    iget-object p3, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->scpmPolicyGroup:Ljava/lang/String;

    .line 128
    .line 129
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p4

    .line 133
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result p3

    .line 137
    if-eqz p3, :cond_9

    .line 138
    .line 139
    move p1, p2

    .line 140
    :cond_9
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->isOwnGroup:Z

    .line 141
    .line 142
    return-void

    .line 143
    :pswitch_1
    const-string p1, "package"

    .line 144
    .line 145
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    if-nez p2, :cond_b

    .line 154
    .line 155
    const-string p2, "com.samsung.android.server.wifi"

    .line 156
    .line 157
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->isOwnPolicy:Z

    .line 162
    .line 163
    return-void

    .line 164
    :pswitch_2
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->isActive:Z

    .line 165
    .line 166
    if-eqz p1, :cond_b

    .line 167
    .line 168
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 173
    .line 174
    .line 175
    move-result p2

    .line 176
    if-nez p2, :cond_b

    .line 177
    .line 178
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->createPolicy(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :pswitch_3
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->isActive:Z

    .line 183
    .line 184
    if-eqz p1, :cond_b

    .line 185
    .line 186
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->getLastPolicy()Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    if-nez p1, :cond_a

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_a
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementName:Ljava/lang/String;

    .line 198
    .line 199
    new-instance p1, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementValue:Ljava/lang/StringBuilder;

    .line 205
    .line 206
    :cond_b
    :goto_1
    return-void

    .line 207
    :pswitch_4
    iget-boolean p3, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->isOwnGroup:Z

    .line 208
    .line 209
    if-eqz p3, :cond_c

    .line 210
    .line 211
    iget-object p3, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->scpmPolicyName:Ljava/lang/String;

    .line 212
    .line 213
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p4

    .line 217
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result p3

    .line 221
    if-eqz p3, :cond_c

    .line 222
    .line 223
    move p1, p2

    .line 224
    :cond_c
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->isActive:Z

    .line 225
    .line 226
    return-void

    .line 227
    :sswitch_data_0
    .sparse-switch
        -0x7a26394e -> :sswitch_8
        -0x352a9fef -> :sswitch_7
        0x197ef -> :sswitch_6
        0x32c67c -> :sswitch_5
        0x3db6c28 -> :sswitch_4
        0x5d0225c -> :sswitch_3
        0x28f42eea -> :sswitch_2
        0x51714799 -> :sswitch_1
        0x5eaaa4ff -> :sswitch_0
    .end sparse-switch

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
