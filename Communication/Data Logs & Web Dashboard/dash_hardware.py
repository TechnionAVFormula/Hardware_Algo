# -*- coding: utf-8 -*-
import dash
import dash_core_components as dcc
import dash_html_components as html
import dash_bootstrap_components as dbc
import time
import dash_daq as daq

from dash.dependencies import Input, Output, State


def generate_card(title, card_id, body):
    header = dbc.Row(
        [
            dbc.Col(html.H5(title, className='card-title')),
            dbc.Col(
                [
                    dbc.Button("W(0)", color='warning', size="sm", className="mr-1"),
                    dbc.Button("E(0)", color='danger', size="sm", className="mr-1")
                ],
                width={'order':'last'}
            )
        ]
    )
    return dbc.Card([dbc.CardHeader(header), dbc.CardBody(body)])

app = dash.Dash(
    external_stylesheets=[dbc.themes.DARKLY]
)

# battery and fuel 
power_card_body = dbc.Container(
    [
        # bars
        dbc.Row(
            [
                dbc.Col(
                    daq.GraduatedBar(
                        id='fuel-level',
                        label="Fuel",
                        showCurrentValue=True,
                        color={'gradient':True,"ranges":{"green":[50,100],"yellow":[20,50],"red":[0,20]}},
                        max=100,
                        step=5,
                        value=30
                    )
                ),
            ],
            className='mb-4'
        ),
        dbc.Row(
            [
                dbc.Col(
                    daq.GraduatedBar(
                        id='battery-level',
                        label="Battery",
                        showCurrentValue=True,
                        color={'gradient':True,"ranges":{"green":[50,100],"yellow":[20,50],"red":[0,20]}},
                        max=100,
                        step=5,
                        value=60
                    )
                ),
            ],
            className='mb-4'
        ),

        # warning lights
        dbc.Row(
            [
                dbc.Col(
                    daq.Indicator(
                        id='LVMS-status',
                        label='LVMS',
                        labelPosition="bottom"
                    ),
                    width=3,
                ),
                dbc.Col(
                    daq.Indicator(
                        id='ASMS-status',
                        label='ASMS',
                        labelPosition="bottom"
                    ),
                    width=3,
                ),
                dbc.Col(
                    daq.Indicator(
                        id='sdc-status',
                        label='SDC',
                        labelPosition="bottom"
                    ),
                    width=3
                )
            ],
            justify="center",
        )
    ]
)

# steering
steering_card_body = dbc.Container(
    [
        dbc.Row(dbc.Col(html.P("Angle (degree)"), width='auto'), justify='center',),
        dbc.Row(
            [
                dbc.Col(
                    daq.Indicator(
                        id='steering-angle-l',
                        label='L',
                        value=True,
                        color="green"
                    ),
                    width='auto'
                ),
                dbc.Col(
                    daq.LEDDisplay(
                        id='my-daq-leddisplay',
                        #label='Steering Angle (Degree)',
                        value="15",
                        size=20,
                    ),
                    width='auto'
                ),
                dbc.Col(
                    daq.Indicator(
                        id='steering-angle-r',
                        label='R',
                        value=True,
                        color="green"
                    ),
                    width='auto'
                )
            ],
            justify='center'        ),
        dbc.Row(
            [
                dbc.Col(
                    daq.Indicator(
                        id='steering-status',
                        label='Status',
                        labelPosition='bottom'
                    ),
                    width='auto'
                )
            ],
            justify='center',
            className='mt-4'
        )  
    ]
)

# brake card
brake_card_body = dbc.Container(
    [
        dbc.Row(
            [
                dbc.Col(              
                    daq.Tank(
                        id='brake-level',
                        min=0,
                        max=1,
                        width=50,
                        value=0.3
                    )
                ),
                dbc.Col(
                    daq.Indicator(
                        id='brake-status',
                        label='Status',
                        labelPosition='bottom'
                    ),
                    
                    align='center'
                )
            ]
        )
    ]  
)

# EBS card
EBS_card_body = dbc.Container(
    [
        dbc.Row(
            [
                dbc.Col(
                    daq.Gauge(
                        id='valve1-pressure-gauge',
                        label = "Valve1",
                        min=0,
                        max=10,
                        value=6
                    ) 
                ),
                dbc.Col(
                    daq.Gauge(
                        id='valve2-pressure-gauge',
                        label = "Valve2",
                        min=0,
                        max=10,
                        value=6
                    ) 
                )
            ]
        ),
        dbc.Row(
            [
                dbc.Col(
                    daq.Indicator(
                        id='ebs-status',
                        label='Status',
                        labelPosition='bottom'
                    ),
                    width='auto'),
                dbc.Col(
                    daq.Indicator(
                        id='ebs-activated',
                        label='Activated',
                        labelPosition='bottom'
                    ),
                    width='auto'),
            ],
            justify='center'
        )

    ]
)

# moTec = html.Div(
#     # throttle level
#     # engine error
# )

# overview tab
overview_tab = [
    dbc.Row(
        [
            dbc.Col(generate_card("Power",'power-card',power_card_body), className='mx-3'),
            dbc.Col(generate_card("EBS",'ebs-card',EBS_card_body), className='mx-3'),
        ],
        className='my-3'
    ),
     dbc.Row(
        [
            dbc.Col(generate_card("Brake",'brake-card', brake_card_body), className='mx-3'),
            dbc.Col(generate_card("Steering",'steering-card',steering_card_body), className='mx-3'),
        ],
        className='my-3'
    )
]

# graph tab
graph_tab = html.P("graph not available")

# tabs 
tabs = dbc.Tabs(
    [
        dbc.Tab(overview_tab, label="Overview"),
        dbc.Tab(graph_tab, label="Graph")#, disabled=True)
    ]
)

#main layout
app.layout = html.Div([dbc.Container(html.H2('Hardware')),tabs])


if __name__ == '__main__':
    app.run_server(debug=True)