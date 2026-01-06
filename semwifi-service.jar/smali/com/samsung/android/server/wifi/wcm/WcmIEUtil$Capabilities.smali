.class public Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/WcmIEUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Capabilities"
.end annotation


# static fields
.field private static final OWE_VENDOR_OUI_TYPE:I = 0x1c9a6f50

.field private static final RSNE_OVERRIDE2_VENDOR_OUI_TYPE:I = 0x2a9a6f50

.field private static final RSNE_OVERRIDE_VENDOR_OUI_TYPE:I = 0x299a6f50

.field private static final RSNE_VERSION:S = 0x1s

.field private static final RSN_AKM_DPP:I = 0x29a6f50

.field private static final RSN_AKM_EAP:I = 0x1ac0f00

.field private static final RSN_AKM_EAP_FILS_SHA256:I = 0xeac0f00

.field private static final RSN_AKM_EAP_FILS_SHA384:I = 0xfac0f00

.field private static final RSN_AKM_EAP_FT_SHA384:I = 0xdac0f00

.field private static final RSN_AKM_EAP_SHA256:I = 0x5ac0f00

.field private static final RSN_AKM_EAP_SUITE_B_192:I = 0xcac0f00

.field private static final RSN_AKM_FT_EAP:I = 0x3ac0f00

.field private static final RSN_AKM_FT_PSK:I = 0x4ac0f00

.field private static final RSN_AKM_FT_PSK_SHA384:I = 0x13ac0f00

.field private static final RSN_AKM_FT_SAE:I = 0x9ac0f00

.field private static final RSN_AKM_FT_SAE_EXT_KEY:I = 0x19ac0f00

.field private static final RSN_AKM_OWE:I = 0x12ac0f00

.field private static final RSN_AKM_PASN:I = 0x15ac0f00

.field private static final RSN_AKM_PSK:I = 0x2ac0f00

.field private static final RSN_AKM_PSK_SHA256:I = 0x6ac0f00

.field private static final RSN_AKM_SAE:I = 0x8ac0f00

.field private static final RSN_AKM_SAE_EXT_KEY:I = 0x18ac0f00

.field private static final RSN_CAP_MANAGEMENT_FRAME_PROTECTION_CAPABLE:I = 0x80

.field private static final RSN_CAP_MANAGEMENT_FRAME_PROTECTION_REQUIRED:I = 0x40

.field private static final RSN_CIPHER_BIP_CMAC_256:I = 0xdac0f00

.field private static final RSN_CIPHER_BIP_GMAC_128:I = 0xbac0f00

.field private static final RSN_CIPHER_BIP_GMAC_256:I = 0xcac0f00

.field private static final RSN_CIPHER_CCMP:I = 0x4ac0f00

.field private static final RSN_CIPHER_CCMP_256:I = 0xaac0f00

.field private static final RSN_CIPHER_GCMP_128:I = 0x8ac0f00

.field private static final RSN_CIPHER_GCMP_256:I = 0x9ac0f00

.field private static final RSN_CIPHER_NONE:I = 0xac0f00

.field private static final RSN_CIPHER_NO_GROUP_ADDRESSED:I = 0x7ac0f00

.field private static final RSN_CIPHER_TKIP:I = 0x2ac0f00

.field private static final RSN_OSEN:I = 0x19a6f50

.field private static final WPA_AKM_EAP:I = 0x1f25000

.field private static final WPA_AKM_PSK:I = 0x2f25000

.field private static final WPA_CIPHER_CCMP:I = 0x4f25000

.field private static final WPA_CIPHER_NONE:I = 0xf25000

.field private static final WPA_CIPHER_TKIP:I = 0x2f25000

.field private static final WPA_VENDOR_OUI_TYPE_ONE:I = 0x1f25000

.field private static final WPA_VENDOR_OUI_VERSION:S = 0x1s

.field private static final WPS_VENDOR_OUI_TYPE:I = 0x4f25000


# instance fields
.field public groupCipher:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public groupManagementCipher:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public isESS:Z

.field public isIBSS:Z

.field public isManagementFrameProtectionCapable:Z

.field public isManagementFrameProtectionRequired:Z

.field public isPrivacy:Z

.field public isRSNEOverrideElementPresent:Z

.field public isWPS:Z

.field public keyManagement:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHasPmfRequiredBitSetToFalseOccurred:Z

.field public pairwiseCipher:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public protocol:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private cipherToString(I)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    const/16 p0, 0xa

    .line 4
    .line 5
    if-eq p1, p0, :cond_5

    .line 6
    .line 7
    const/4 p0, 0x2

    .line 8
    if-eq p1, p0, :cond_4

    .line 9
    .line 10
    const/4 p0, 0x3

    .line 11
    if-eq p1, p0, :cond_3

    .line 12
    .line 13
    const/4 p0, 0x4

    .line 14
    if-eq p1, p0, :cond_2

    .line 15
    .line 16
    const/4 p0, 0x5

    .line 17
    if-eq p1, p0, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x6

    .line 20
    if-eq p1, p0, :cond_0

    .line 21
    .line 22
    const-string p0, "?"

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_0
    const-string p0, "GCMP-128"

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_1
    const-string p0, "SMS4"

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_2
    const-string p0, "GCMP-256"

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_3
    const-string p0, "CCMP-128"

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_4
    const-string p0, "TKIP"

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_5
    const-string p0, "CCMP-256"

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_6
    const-string p0, "None"

    .line 44
    .line 45
    return-object p0
.end method

.method private generateWPA2CapabilitiesString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "EAP_SUITE_B_192"

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_6

    .line 13
    .line 14
    const-string v1, "RSN-EAP"

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const-string v1, "RSN-FT/EAP"

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    const-string v1, "RSN-PSK"

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    const-string v1, "RSN-FT/PSK"

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    goto/16 :goto_5

    .line 47
    .line 48
    :cond_0
    const-string v1, "[WPA2"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->keyManagement:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    const-string v2, "+"

    .line 60
    .line 61
    const-string v3, "-"

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    if-ge p2, v1, :cond_3

    .line 65
    .line 66
    move v1, v4

    .line 67
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->keyManagement:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    check-cast v5, Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-ge v1, v5, :cond_3

    .line 80
    .line 81
    if-nez v1, :cond_1

    .line 82
    .line 83
    move-object v5, v3

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    move-object v5, v2

    .line 86
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->keyManagement:Ljava/util/List;

    .line 90
    .line 91
    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    check-cast v5, Ljava/util/List;

    .line 96
    .line 97
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    check-cast v5, Ljava/lang/Integer;

    .line 102
    .line 103
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->keyManagementToString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v5, "SAE"

    .line 115
    .line 116
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-eqz v5, :cond_2

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->pairwiseCipher:Ljava/util/List;

    .line 127
    .line 128
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-ge p2, p1, :cond_5

    .line 133
    .line 134
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->pairwiseCipher:Ljava/util/List;

    .line 135
    .line 136
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    check-cast p1, Ljava/util/List;

    .line 141
    .line 142
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-ge v4, p1, :cond_5

    .line 147
    .line 148
    if-nez v4, :cond_4

    .line 149
    .line 150
    move-object p1, v3

    .line 151
    goto :goto_4

    .line 152
    :cond_4
    move-object p1, v2

    .line 153
    :goto_4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->pairwiseCipher:Ljava/util/List;

    .line 157
    .line 158
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    check-cast p1, Ljava/util/List;

    .line 163
    .line 164
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    check-cast p1, Ljava/lang/Integer;

    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->cipherToString(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    add-int/lit8 v4, v4, 0x1

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_5
    const-string p0, "]"

    .line 185
    .line 186
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    return-object p0

    .line 194
    :cond_6
    :goto_5
    const-string p0, ""

    .line 195
    .line 196
    return-object p0
.end method

.method private getScanResultAkmSchemeOfUnknownAkmIfConfigured(ILandroid/util/SparseIntArray;)I
    .locals 0

    .line 1
    const/16 p0, 0x17

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2, p1, p0}, Landroid/util/SparseIntArray;->get(II)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    :cond_0
    return p0
.end method

.method private static isOweElement(Landroid/net/wifi/ScanResult$InformationElement;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 2
    .line 3
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v0, 0x0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 15
    .line 16
    .line 17
    move-result p0
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    const v1, 0x1c9a6f50

    .line 19
    .line 20
    .line 21
    if-ne p0, v1, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_0
    return v0

    .line 26
    :catch_0
    const-string p0, "IE_Capabilities"

    .line 27
    .line 28
    const-string v1, "Couldn\'t parse VSA IE, buffer underflow"

    .line 29
    .line 30
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return v0
.end method

.method private static isRsneOverrideElement(Landroid/net/wifi/ScanResult$InformationElement;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 2
    .line 3
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v0, 0x0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 15
    .line 16
    .line 17
    move-result p0
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    const v1, 0x299a6f50

    .line 19
    .line 20
    .line 21
    if-eq p0, v1, :cond_1

    .line 22
    .line 23
    const v1, 0x2a9a6f50

    .line 24
    .line 25
    .line 26
    if-ne p0, v1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return v0

    .line 30
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :catch_0
    const-string p0, "IE_Capabilities"

    .line 33
    .line 34
    const-string v1, "Couldn\'t parse VSA IE, buffer underflow"

    .line 35
    .line 36
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return v0
.end method

.method private static isWpaOneElement(Landroid/net/wifi/ScanResult$InformationElement;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 2
    .line 3
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v0, 0x0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 15
    .line 16
    .line 17
    move-result p0
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    const v1, 0x1f25000

    .line 19
    .line 20
    .line 21
    if-ne p0, v1, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_0
    return v0

    .line 26
    :catch_0
    const-string p0, "IE_Capabilities"

    .line 27
    .line 28
    const-string v1, "Couldn\'t parse VSA IE, buffer underflow"

    .line 29
    .line 30
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return v0
.end method

.method private static isWpsElement(Landroid/net/wifi/ScanResult$InformationElement;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 2
    .line 3
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v0, 0x0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 15
    .line 16
    .line 17
    move-result p0
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    const v1, 0x4f25000

    .line 19
    .line 20
    .line 21
    if-ne p0, v1, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_0
    return v0

    .line 26
    :catch_0
    const-string p0, "IE_Capabilities"

    .line 27
    .line 28
    const-string v1, "Couldn\'t parse VSA IE, buffer underflow"

    .line 29
    .line 30
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return v0
.end method

.method private keyManagementToString(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string p0, "?"

    .line 5
    .line 6
    return-object p0

    .line 7
    :pswitch_0
    const-string p0, "FT/PSK-SHA384"

    .line 8
    .line 9
    return-object p0

    .line 10
    :pswitch_1
    const-string p0, "EAP-FT-SHA384"

    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_2
    const-string p0, "PASN"

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_3
    const-string p0, "FT/SAE_EXT_KEY"

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_4
    const-string p0, "SAE_EXT_KEY"

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_5
    const-string p0, "DPP"

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_6
    const-string p0, "EAP-FILS-SHA384"

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_7
    const-string p0, "EAP-FILS-SHA256"

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_8
    const-string p0, "WAPI-CERT"

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_9
    const-string p0, "WAPI-PSK"

    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_a
    const-string p0, "OWE_TRANSITION"

    .line 38
    .line 39
    return-object p0

    .line 40
    :pswitch_b
    const-string p0, "FT/SAE"

    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_c
    const-string p0, "EAP_SUITE_B_192"

    .line 44
    .line 45
    return-object p0

    .line 46
    :pswitch_d
    const-string p0, "OWE"

    .line 47
    .line 48
    return-object p0

    .line 49
    :pswitch_e
    const-string p0, "SAE"

    .line 50
    .line 51
    return-object p0

    .line 52
    :pswitch_f
    const-string p0, "OSEN"

    .line 53
    .line 54
    return-object p0

    .line 55
    :pswitch_10
    const-string p0, "EAP/SHA256"

    .line 56
    .line 57
    return-object p0

    .line 58
    :pswitch_11
    const-string p0, "PSK-SHA256"

    .line 59
    .line 60
    return-object p0

    .line 61
    :pswitch_12
    const-string p0, "FT/EAP"

    .line 62
    .line 63
    return-object p0

    .line 64
    :pswitch_13
    const-string p0, "FT/PSK"

    .line 65
    .line 66
    return-object p0

    .line 67
    :pswitch_14
    const-string p0, "EAP/SHA1"

    .line 68
    .line 69
    return-object p0

    .line 70
    :pswitch_15
    const-string p0, "PSK"

    .line 71
    .line 72
    return-object p0

    .line 73
    :pswitch_16
    const-string p0, "None"

    .line 74
    .line 75
    return-object p0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseRsnCipher(I)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    sparse-switch p0, :sswitch_data_0

    .line 3
    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "Unknown RSN cipher suite: "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v1, "IE_Capabilities"

    .line 24
    .line 25
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return v0

    .line 29
    :sswitch_0
    const/16 p0, 0x9

    .line 30
    .line 31
    return p0

    .line 32
    :sswitch_1
    const/16 p0, 0x8

    .line 33
    .line 34
    return p0

    .line 35
    :sswitch_2
    const/4 p0, 0x7

    .line 36
    return p0

    .line 37
    :sswitch_3
    const/16 p0, 0xa

    .line 38
    .line 39
    return p0

    .line 40
    :sswitch_4
    const/4 p0, 0x4

    .line 41
    return p0

    .line 42
    :sswitch_5
    const/4 p0, 0x6

    .line 43
    return p0

    .line 44
    :sswitch_6
    const/4 p0, 0x1

    .line 45
    return p0

    .line 46
    :sswitch_7
    const/4 p0, 0x3

    .line 47
    return p0

    .line 48
    :sswitch_8
    const/4 p0, 0x2

    .line 49
    return p0

    .line 50
    :sswitch_9
    return v0

    .line 51
    :sswitch_data_0
    .sparse-switch
        0xac0f00 -> :sswitch_9
        0x2ac0f00 -> :sswitch_8
        0x4ac0f00 -> :sswitch_7
        0x7ac0f00 -> :sswitch_6
        0x8ac0f00 -> :sswitch_5
        0x9ac0f00 -> :sswitch_4
        0xaac0f00 -> :sswitch_3
        0xbac0f00 -> :sswitch_2
        0xcac0f00 -> :sswitch_1
        0xdac0f00 -> :sswitch_0
    .end sparse-switch
.end method

.method private parseRsnElement(Ljava/nio/ByteBuffer;Landroid/util/SparseIntArray;)V
    .locals 9

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    goto/16 :goto_6

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->protocol:Ljava/util/List;

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->groupCipher:Ljava/util/List;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-static {v3}, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->parseRsnCipher(I)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    new-instance v3, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    move v5, v4

    .line 48
    :goto_0
    if-ge v5, v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    invoke-static {v6}, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->parseRsnCipher(I)I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    add-int/lit8 v5, v5, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->pairwiseCipher:Ljava/util/List;

    .line 69
    .line 70
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    new-instance v3, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    move v5, v4

    .line 83
    :goto_1
    const/4 v6, 0x4

    .line 84
    const/16 v7, 0x10

    .line 85
    .line 86
    if-ge v5, v0, :cond_2

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    sparse-switch v8, :sswitch_data_0

    .line 93
    .line 94
    .line 95
    invoke-direct {p0, v8, p2}, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->getScanResultAkmSchemeOfUnknownAkmIfConfigured(ILandroid/util/SparseIntArray;)I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    goto/16 :goto_2

    .line 107
    .line 108
    :sswitch_0
    const/16 v6, 0x13

    .line 109
    .line 110
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    goto/16 :goto_2

    .line 118
    .line 119
    :sswitch_1
    const/16 v6, 0x12

    .line 120
    .line 121
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    goto/16 :goto_2

    .line 129
    .line 130
    :sswitch_2
    const/16 v6, 0x14

    .line 131
    .line 132
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    goto/16 :goto_2

    .line 140
    .line 141
    :sswitch_3
    const/16 v6, 0x16

    .line 142
    .line 143
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    goto/16 :goto_2

    .line 151
    .line 152
    :sswitch_4
    const/16 v6, 0x9

    .line 153
    .line 154
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    goto/16 :goto_2

    .line 162
    .line 163
    :sswitch_5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    goto/16 :goto_2

    .line 171
    .line 172
    :sswitch_6
    const/16 v6, 0xf

    .line 173
    .line 174
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    goto/16 :goto_2

    .line 182
    .line 183
    :sswitch_7
    const/16 v6, 0x15

    .line 184
    .line 185
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :sswitch_8
    const/16 v6, 0xa

    .line 194
    .line 195
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :sswitch_9
    const/16 v6, 0xb

    .line 204
    .line 205
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    goto :goto_2

    .line 213
    :sswitch_a
    const/16 v6, 0x8

    .line 214
    .line 215
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    goto :goto_2

    .line 223
    :sswitch_b
    const/4 v6, 0x5

    .line 224
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    goto :goto_2

    .line 232
    :sswitch_c
    const/4 v6, 0x6

    .line 233
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    goto :goto_2

    .line 241
    :sswitch_d
    const/4 v6, 0x3

    .line 242
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    goto :goto_2

    .line 250
    :sswitch_e
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    goto :goto_2

    .line 258
    :sswitch_f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    goto :goto_2

    .line 266
    :sswitch_10
    const/16 v6, 0x11

    .line 267
    .line 268
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    goto :goto_2

    .line 276
    :sswitch_11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 277
    .line 278
    .line 279
    move-result-object v6

    .line 280
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    goto :goto_2

    .line 284
    :sswitch_12
    const/4 v6, 0x7

    .line 285
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object v6

    .line 289
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 293
    .line 294
    goto/16 :goto_1

    .line 295
    .line 296
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 297
    .line 298
    .line 299
    move-result p2

    .line 300
    if-eqz p2, :cond_3

    .line 301
    .line 302
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 303
    .line 304
    .line 305
    move-result-object p2

    .line 306
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->keyManagement:Ljava/util/List;

    .line 310
    .line 311
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    .line 315
    .line 316
    .line 317
    move-result p2

    .line 318
    if-ge p2, v2, :cond_4

    .line 319
    .line 320
    goto :goto_6

    .line 321
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 322
    .line 323
    .line 324
    move-result p2

    .line 325
    and-int/lit8 v0, p2, 0x40

    .line 326
    .line 327
    if-nez v0, :cond_5

    .line 328
    .line 329
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->mHasPmfRequiredBitSetToFalseOccurred:Z

    .line 330
    .line 331
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->isManagementFrameProtectionRequired:Z

    .line 332
    .line 333
    goto :goto_3

    .line 334
    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->mHasPmfRequiredBitSetToFalseOccurred:Z

    .line 335
    .line 336
    if-nez v0, :cond_6

    .line 337
    .line 338
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->isManagementFrameProtectionRequired:Z

    .line 339
    .line 340
    :cond_6
    :goto_3
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->isManagementFrameProtectionCapable:Z

    .line 341
    .line 342
    and-int/lit16 p2, p2, 0x80

    .line 343
    .line 344
    if-eqz p2, :cond_7

    .line 345
    .line 346
    goto :goto_4

    .line 347
    :cond_7
    move v1, v4

    .line 348
    :goto_4
    or-int p2, v0, v1

    .line 349
    .line 350
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->isManagementFrameProtectionCapable:Z

    .line 351
    .line 352
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    .line 353
    .line 354
    .line 355
    move-result p2

    .line 356
    if-ge p2, v2, :cond_8

    .line 357
    .line 358
    goto :goto_6

    .line 359
    :cond_8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 360
    .line 361
    .line 362
    move-result p2

    .line 363
    :goto_5
    if-ge v4, p2, :cond_9

    .line 364
    .line 365
    new-array v0, v7, [B

    .line 366
    .line 367
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 368
    .line 369
    .line 370
    add-int/lit8 v4, v4, 0x1

    .line 371
    .line 372
    goto :goto_5

    .line 373
    :cond_9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    .line 374
    .line 375
    .line 376
    move-result p2

    .line 377
    if-ge p2, v6, :cond_a

    .line 378
    .line 379
    goto :goto_6

    .line 380
    :cond_a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->groupManagementCipher:Ljava/util/List;

    .line 381
    .line 382
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 383
    .line 384
    .line 385
    move-result p1

    .line 386
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->parseRsnCipher(I)I

    .line 387
    .line 388
    .line 389
    move-result p1

    .line 390
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    .line 396
    .line 397
    return-void

    .line 398
    :catch_0
    const-string p0, "IE_Capabilities"

    .line 399
    .line 400
    const-string p1, "Couldn\'t parse RSNE, buffer underflow"

    .line 401
    .line 402
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    .line 404
    .line 405
    :goto_6
    return-void

    .line 406
    nop

    .line 407
    :sswitch_data_0
    .sparse-switch
        0x19a6f50 -> :sswitch_12
        0x1ac0f00 -> :sswitch_11
        0x29a6f50 -> :sswitch_10
        0x2ac0f00 -> :sswitch_f
        0x3ac0f00 -> :sswitch_e
        0x4ac0f00 -> :sswitch_d
        0x5ac0f00 -> :sswitch_c
        0x6ac0f00 -> :sswitch_b
        0x8ac0f00 -> :sswitch_a
        0x9ac0f00 -> :sswitch_9
        0xcac0f00 -> :sswitch_8
        0xdac0f00 -> :sswitch_7
        0xeac0f00 -> :sswitch_6
        0xfac0f00 -> :sswitch_5
        0x12ac0f00 -> :sswitch_4
        0x13ac0f00 -> :sswitch_3
        0x15ac0f00 -> :sswitch_2
        0x18ac0f00 -> :sswitch_1
        0x19ac0f00 -> :sswitch_0
    .end sparse-switch
.end method

.method private static parseWpaCipher(I)I
    .locals 3

    .line 1
    const v0, 0xf25000

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eq p0, v0, :cond_2

    .line 6
    .line 7
    const v0, 0x2f25000

    .line 8
    .line 9
    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const v0, 0x4f25000

    .line 13
    .line 14
    .line 15
    if-eq p0, v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "Unknown WPA cipher suite: "

    .line 20
    .line 21
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string v0, "IE_Capabilities"

    .line 36
    .line 37
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    return v1

    .line 41
    :cond_0
    const/4 p0, 0x3

    .line 42
    return p0

    .line 43
    :cond_1
    const/4 p0, 0x2

    .line 44
    return p0

    .line 45
    :cond_2
    return v1
.end method

.method private parseWpaOneElement(Landroid/net/wifi/ScanResult$InformationElement;Landroid/util/SparseIntArray;)V
    .locals 7

    .line 1
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 2
    .line 3
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    goto/16 :goto_3

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->protocol:Ljava/util/List;

    .line 26
    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->groupCipher:Ljava/util/List;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-static {v2}, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->parseWpaCipher(I)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    new-instance v2, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    move v4, v3

    .line 62
    :goto_0
    if-ge v4, v0, :cond_1

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    invoke-static {v5}, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->parseWpaCipher(I)I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    add-int/lit8 v4, v4, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->pairwiseCipher:Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    :goto_1
    const/4 v4, 0x2

    .line 97
    if-ge v3, v0, :cond_4

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    const v6, 0x1f25000

    .line 104
    .line 105
    .line 106
    if-eq v5, v6, :cond_3

    .line 107
    .line 108
    const v4, 0x2f25000

    .line 109
    .line 110
    .line 111
    if-eq v5, v4, :cond_2

    .line 112
    .line 113
    invoke-direct {p0, v5, p2}, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->getScanResultAkmSchemeOfUnknownAkmIfConfigured(ILandroid/util/SparseIntArray;)I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_5

    .line 148
    .line 149
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->keyManagement:Ljava/util/List;

    .line 157
    .line 158
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :catch_0
    const-string p0, "IE_Capabilities"

    .line 163
    .line 164
    const-string p1, "Couldn\'t parse type 1 WPA, buffer underflow"

    .line 165
    .line 166
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    :goto_3
    return-void
.end method

.method private protocolToString(I)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    if-eq p1, p0, :cond_3

    .line 5
    .line 6
    const/4 p0, 0x2

    .line 7
    if-eq p1, p0, :cond_2

    .line 8
    .line 9
    const/4 p0, 0x3

    .line 10
    if-eq p1, p0, :cond_1

    .line 11
    .line 12
    const/4 p0, 0x4

    .line 13
    if-eq p1, p0, :cond_0

    .line 14
    .line 15
    const-string p0, "?"

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    const-string p0, "WAPI"

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    const-string p0, "OSEN"

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_2
    const-string p0, "RSN"

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_3
    const-string p0, "WPA"

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_4
    const-string p0, "None"

    .line 31
    .line 32
    return-object p0
.end method


# virtual methods
.method public from([Landroid/net/wifi/ScanResult$InformationElement;IZZILandroid/util/SparseIntArray;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->protocol:Ljava/util/List;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->keyManagement:Ljava/util/List;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->groupCipher:Ljava/util/List;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->pairwiseCipher:Ljava/util/List;

    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->groupManagementCipher:Ljava/util/List;

    .line 35
    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    goto/16 :goto_5

    .line 39
    .line 40
    :cond_0
    and-int/lit8 v0, p2, 0x10

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    const/4 v2, 0x1

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    move v0, v2

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move v0, v1

    .line 49
    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->isPrivacy:Z

    .line 50
    .line 51
    invoke-static {p5}, Landroid/net/wifi/ScanResult;->is60GHz(I)Z

    .line 52
    .line 53
    .line 54
    move-result p5

    .line 55
    const/4 v0, 0x2

    .line 56
    const/4 v3, 0x3

    .line 57
    if-eqz p5, :cond_3

    .line 58
    .line 59
    and-int/lit8 p5, p2, 0x3

    .line 60
    .line 61
    if-ne p5, v3, :cond_2

    .line 62
    .line 63
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->isESS:Z

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_2
    and-int/2addr p2, v2

    .line 67
    if-eqz p2, :cond_6

    .line 68
    .line 69
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->isIBSS:Z

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    and-int/lit8 p5, p2, 0x1

    .line 73
    .line 74
    if-eqz p5, :cond_4

    .line 75
    .line 76
    move p5, v2

    .line 77
    goto :goto_1

    .line 78
    :cond_4
    move p5, v1

    .line 79
    :goto_1
    iput-boolean p5, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->isESS:Z

    .line 80
    .line 81
    and-int/2addr p2, v0

    .line 82
    if-eqz p2, :cond_5

    .line 83
    .line 84
    move p2, v2

    .line 85
    goto :goto_2

    .line 86
    :cond_5
    move p2, v1

    .line 87
    :goto_2
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->isIBSS:Z

    .line 88
    .line 89
    :cond_6
    :goto_3
    array-length p2, p1

    .line 90
    :goto_4
    if-ge v1, p2, :cond_d

    .line 91
    .line 92
    aget-object p5, p1, v1

    .line 93
    .line 94
    iget v4, p5, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 95
    .line 96
    iget v5, p5, Landroid/net/wifi/ScanResult$InformationElement;->idExt:I

    .line 97
    .line 98
    iget-object v6, p5, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 99
    .line 100
    invoke-static {v4, v5, v6}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->parseOemSecurityTypeElement(II[B)Landroid/net/wifi/nl80211/WifiNl80211Manager$OemSecurityType;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    if-eqz v4, :cond_7

    .line 105
    .line 106
    iget v5, v4, Landroid/net/wifi/nl80211/WifiNl80211Manager$OemSecurityType;->protocol:I

    .line 107
    .line 108
    if-eqz v5, :cond_7

    .line 109
    .line 110
    iget-object v6, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->protocol:Ljava/util/List;

    .line 111
    .line 112
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->keyManagement:Ljava/util/List;

    .line 120
    .line 121
    iget-object v6, v4, Landroid/net/wifi/nl80211/WifiNl80211Manager$OemSecurityType;->keyManagement:Ljava/util/List;

    .line 122
    .line 123
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->pairwiseCipher:Ljava/util/List;

    .line 127
    .line 128
    iget-object v6, v4, Landroid/net/wifi/nl80211/WifiNl80211Manager$OemSecurityType;->pairwiseCipher:Ljava/util/List;

    .line 129
    .line 130
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->groupCipher:Ljava/util/List;

    .line 134
    .line 135
    iget v4, v4, Landroid/net/wifi/nl80211/WifiNl80211Manager$OemSecurityType;->groupCipher:I

    .line 136
    .line 137
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    :cond_7
    iget v4, p5, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 145
    .line 146
    const/16 v5, 0x30

    .line 147
    .line 148
    if-ne v4, v5, :cond_8

    .line 149
    .line 150
    iget-object v4, p5, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 151
    .line 152
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 157
    .line 158
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-direct {p0, v4, p6}, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->parseRsnElement(Ljava/nio/ByteBuffer;Landroid/util/SparseIntArray;)V

    .line 163
    .line 164
    .line 165
    :cond_8
    iget v4, p5, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 166
    .line 167
    const/16 v5, 0xdd

    .line 168
    .line 169
    if-ne v4, v5, :cond_c

    .line 170
    .line 171
    if-eqz p4, :cond_9

    .line 172
    .line 173
    invoke-static {p5}, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->isRsneOverrideElement(Landroid/net/wifi/ScanResult$InformationElement;)Z

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-eqz v4, :cond_9

    .line 178
    .line 179
    iget-object v4, p5, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 180
    .line 181
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 186
    .line 187
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    .line 192
    .line 193
    .line 194
    invoke-direct {p0, v4, p6}, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->parseRsnElement(Ljava/nio/ByteBuffer;Landroid/util/SparseIntArray;)V

    .line 195
    .line 196
    .line 197
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->isRSNEOverrideElementPresent:Z

    .line 198
    .line 199
    :cond_9
    invoke-static {p5}, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->isWpaOneElement(Landroid/net/wifi/ScanResult$InformationElement;)Z

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    if-eqz v4, :cond_a

    .line 204
    .line 205
    invoke-direct {p0, p5, p6}, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->parseWpaOneElement(Landroid/net/wifi/ScanResult$InformationElement;Landroid/util/SparseIntArray;)V

    .line 206
    .line 207
    .line 208
    :cond_a
    invoke-static {p5}, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->isWpsElement(Landroid/net/wifi/ScanResult$InformationElement;)Z

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    if-eqz v4, :cond_b

    .line 213
    .line 214
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->isWPS:Z

    .line 215
    .line 216
    :cond_b
    if-eqz p3, :cond_c

    .line 217
    .line 218
    invoke-static {p5}, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->isOweElement(Landroid/net/wifi/ScanResult$InformationElement;)Z

    .line 219
    .line 220
    .line 221
    move-result p5

    .line 222
    if-eqz p5, :cond_c

    .line 223
    .line 224
    iget-object p5, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->protocol:Ljava/util/List;

    .line 225
    .line 226
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    invoke-interface {p5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    iget-object p5, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->groupCipher:Ljava/util/List;

    .line 234
    .line 235
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    invoke-interface {p5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    new-instance p5, Ljava/util/ArrayList;

    .line 243
    .line 244
    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .line 246
    .line 247
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    invoke-virtual {p5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->pairwiseCipher:Ljava/util/List;

    .line 255
    .line 256
    invoke-interface {v4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    new-instance p5, Ljava/util/ArrayList;

    .line 260
    .line 261
    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .line 263
    .line 264
    const/16 v4, 0xc

    .line 265
    .line 266
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    invoke-virtual {p5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->keyManagement:Ljava/util/List;

    .line 274
    .line 275
    invoke-interface {v4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    :cond_c
    add-int/lit8 v1, v1, 0x1

    .line 279
    .line 280
    goto/16 :goto_4

    .line 281
    .line 282
    :cond_d
    :goto_5
    return-void
.end method

.method public generateCapabilitiesString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->protocol:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->isPrivacy:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const-string v1, "[WEP]"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->protocol:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-ge v1, v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->generateCapabilitiesStringPerProtocol(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->generateWPA2CapabilitiesString(Ljava/lang/String;I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->isESS:Z

    .line 50
    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    const-string v1, "[ESS]"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->isIBSS:Z

    .line 59
    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    const-string v1, "[IBSS]"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->isWPS:Z

    .line 68
    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    const-string v1, "[WPS]"

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->isManagementFrameProtectionRequired:Z

    .line 77
    .line 78
    if-eqz v1, :cond_5

    .line 79
    .line 80
    const-string v1, "[MFPR]"

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    :cond_5
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->isManagementFrameProtectionCapable:Z

    .line 86
    .line 87
    if-eqz v1, :cond_6

    .line 88
    .line 89
    const-string v1, "[MFPC]"

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    :cond_6
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->isRSNEOverrideElementPresent:Z

    .line 95
    .line 96
    if-eqz p0, :cond_7

    .line 97
    .line 98
    const-string p0, "[RSNO]"

    .line 99
    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0
.end method

.method public generateCapabilitiesStringPerProtocol(I)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->protocol:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->protocolToString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->keyManagement:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const-string v2, "+"

    .line 34
    .line 35
    const-string v3, "-"

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    if-ge p1, v1, :cond_1

    .line 39
    .line 40
    move v1, v4

    .line 41
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->keyManagement:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-ge v1, v5, :cond_1

    .line 54
    .line 55
    if-nez v1, :cond_0

    .line 56
    .line 57
    move-object v5, v3

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    move-object v5, v2

    .line 60
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->keyManagement:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Ljava/util/List;

    .line 70
    .line 71
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    check-cast v5, Ljava/lang/Integer;

    .line 76
    .line 77
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->keyManagementToString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    add-int/lit8 v1, v1, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->pairwiseCipher:Ljava/util/List;

    .line 92
    .line 93
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-ge p1, v1, :cond_3

    .line 98
    .line 99
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->pairwiseCipher:Ljava/util/List;

    .line 100
    .line 101
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Ljava/util/List;

    .line 106
    .line 107
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-ge v4, v1, :cond_3

    .line 112
    .line 113
    if-nez v4, :cond_2

    .line 114
    .line 115
    move-object v1, v3

    .line 116
    goto :goto_3

    .line 117
    :cond_2
    move-object v1, v2

    .line 118
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->pairwiseCipher:Ljava/util/List;

    .line 122
    .line 123
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Ljava/util/List;

    .line 128
    .line 129
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    check-cast v1, Ljava/lang/Integer;

    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->cipherToString(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    add-int/lit8 v4, v4, 0x1

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_3
    const-string p0, "]"

    .line 150
    .line 151
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    return-object p0
.end method
