.class public Lcom/android/server/display/topology/Topology;
.super Ljava/lang/Object;
.source "Topology.java"


# instance fields
.field private display:Lcom/android/server/display/topology/Display;

.field private id:Ljava/lang/String;

.field private immutable:Ljava/lang/Boolean;

.field private order:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/topology/Topology;
    .locals 7
    .param p0, "_parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/android/server/display/topology/Topology;

    invoke-direct {v0}, Lcom/android/server/display/topology/Topology;-><init>()V

    .line 77
    .local v0, "_instance":Lcom/android/server/display/topology/Topology;
    const/4 v1, 0x0

    .line 78
    .local v1, "_raw":Ljava/lang/String;
    const-string/jumbo v2, "id"

    const/4 v3, 0x0

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_0

    .line 80
    move-object v2, v1

    .line 81
    .local v2, "_value":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/server/display/topology/Topology;->setId(Ljava/lang/String;)V

    .line 83
    .end local v2    # "_value":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "order"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    if-eqz v1, :cond_1

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 86
    .local v2, "_value":I
    invoke-virtual {v0, v2}, Lcom/android/server/display/topology/Topology;->setOrder(I)V

    .line 88
    .end local v2    # "_value":I
    :cond_1
    const-string/jumbo v2, "immutable"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_2

    .line 90
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 91
    .local v2, "_value":Z
    invoke-virtual {v0, v2}, Lcom/android/server/display/topology/Topology;->setImmutable(Z)V

    .line 93
    .end local v2    # "_value":Z
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 95
    .local v2, "outerDepth":I
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_5

    if-eq v4, v6, :cond_5

    .line 97
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3

    goto :goto_0

    .line 98
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "_tagName":Ljava/lang/String;
    const-string v5, "display"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 100
    invoke-static {p0}, Lcom/android/server/display/topology/Display;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/topology/Display;

    move-result-object v5

    .line 101
    .local v5, "_value":Lcom/android/server/display/topology/Display;
    invoke-virtual {v0, v5}, Lcom/android/server/display/topology/Topology;->setDisplay(Lcom/android/server/display/topology/Display;)V

    .line 102
    .end local v5    # "_value":Lcom/android/server/display/topology/Display;
    goto :goto_1

    .line 103
    :cond_4
    invoke-static {p0}, Lcom/android/server/display/topology/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 105
    .end local v3    # "_tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 106
    :cond_5
    if-ne v4, v6, :cond_6

    .line 109
    return-object v0

    .line 107
    :cond_6
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "Topology is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getDisplay()Lcom/android/server/display/topology/Display;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/android/server/display/topology/Topology;->display:Lcom/android/server/display/topology/Display;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/android/server/display/topology/Topology;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImmutable()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/server/display/topology/Topology;->immutable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x0

    return v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/topology/Topology;->immutable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/server/display/topology/Topology;->order:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    return v0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/topology/Topology;->order:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method hasDisplay()Z
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/android/server/display/topology/Topology;->display:Lcom/android/server/display/topology/Display;

    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x0

    return v0

    .line 17
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasId()Z
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/android/server/display/topology/Topology;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x0

    return v0

    .line 32
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasImmutable()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/server/display/topology/Topology;->immutable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    return v0

    .line 68
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasOrder()Z
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/server/display/topology/Topology;->order:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    return v0

    .line 50
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setDisplay(Lcom/android/server/display/topology/Display;)V
    .locals 0
    .param p1, "display"    # Lcom/android/server/display/topology/Display;

    .line 21
    iput-object p1, p0, Lcom/android/server/display/topology/Topology;->display:Lcom/android/server/display/topology/Display;

    .line 22
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/android/server/display/topology/Topology;->id:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setImmutable(Z)V
    .locals 1
    .param p1, "immutable"    # Z

    .line 72
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/topology/Topology;->immutable:Ljava/lang/Boolean;

    .line 73
    return-void
.end method

.method public setOrder(I)V
    .locals 1
    .param p1, "order"    # I

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/topology/Topology;->order:Ljava/lang/Integer;

    .line 55
    return-void
.end method

.method write(Lcom/android/server/display/topology/XmlWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "_out"    # Lcom/android/server/display/topology/XmlWriter;
    .param p2, "_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/server/display/topology/Topology;->hasId()Z

    move-result v0

    const-string v1, "\""

    if-eqz v0, :cond_0

    .line 115
    const-string v0, " id=\""

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/server/display/topology/Topology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1, v1}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/topology/Topology;->hasOrder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    const-string v0, " order=\""

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/server/display/topology/Topology;->getOrder()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1, v1}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/topology/Topology;->hasImmutable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    const-string v0, " immutable=\""

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/server/display/topology/Topology;->getImmutable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1, v1}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 129
    :cond_2
    const-string v0, ">\n"

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Lcom/android/server/display/topology/XmlWriter;->increaseIndent()V

    .line 131
    invoke-virtual {p0}, Lcom/android/server/display/topology/Topology;->hasDisplay()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 132
    invoke-virtual {p0}, Lcom/android/server/display/topology/Topology;->getDisplay()Lcom/android/server/display/topology/Display;

    move-result-object v1

    const-string v2, "display"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/display/topology/Display;->write(Lcom/android/server/display/topology/XmlWriter;Ljava/lang/String;)V

    .line 134
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/display/topology/XmlWriter;->decreaseIndent()V

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "</"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/XmlWriter;->print(Ljava/lang/String;)V

    .line 136
    return-void
.end method
